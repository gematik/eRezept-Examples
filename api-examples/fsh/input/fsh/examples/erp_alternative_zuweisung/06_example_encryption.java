/*
Copyright (Change Date see Readme), gematik GmbH

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

*******

For additional notes and disclaimer from gematik and in case of changes
by gematik, find details in the "Readme" file.
*/
public class example_encryption {
    val info = ASN1EncodableVector().apply
    {
        recipientCerts.forEach { recipientCert ->
            add(
                DERSequence(
                    ASN1EncodableVector().apply {
                        add(DERIA5String("3-10.3.1234567000.10.999", true))

                        add(RecipientIdentifier(IssuerAndSerialNumber(JcaX509CertificateHolder(recipientCert).toASN1Structure())))
                    }
                )
            )
        }
    }
    // ...
    recipientCerts.forEach{ recipientCert ->
        if (recipientCert.sigAlgOID == oidEcdsaWithSHA256) {
            edGen.addRecipientInfoGenerator(
                JceKeyAgreeRecipientInfoGenerator(
                    CMSAlgorithm.ECDH_SHA256KDF,
                    kp.private,
                    kp.public,
                    CMSAlgorithm.AES256_GCM
                )
                    .setProvider(BCProvider)
                    .addRecipient(recipientCert)
            );
        } else {
            edGen.addRecipientInfoGenerator(
                JceKeyTransRecipientInfoGenerator(
                    recipientCert,
                    JceAsymmetricKeyWrapper(
                        OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, PSource.PSpecified.DEFAULT),
                        recipientCert.publicKey
                    )
                ).setProvider(BCProvider)
            )
        }
    }
}