import os
import re
import argparse
import shutil

def copy_files(src_directory, dst_directory):
    if not os.path.exists(dst_directory):
        os.makedirs(dst_directory)
    for root, dirs, files in os.walk(src_directory):
        for dir in dirs:
            os.makedirs(os.path.join(dst_directory, os.path.relpath(os.path.join(root, dir), src_directory)), exist_ok=True)
        for file in files:
            if file.endswith('.fsh'):
                src_file_path = os.path.join(root, file)
                dst_file_path = os.path.join(dst_directory, os.path.relpath(src_file_path, src_directory))
                shutil.copy2(src_file_path, dst_file_path)
                print(f"Copied file: {src_file_path} to {dst_file_path}")

def process_fsh_files(directory, profile_version):
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.fsh'):
                file_path = os.path.join(root, file)
                with open(file_path, 'r') as f:
                    content = f.read()
                
                # Replace the placeholder with the actual version
                updated_content = re.sub(r'\{\{profileVersion\}\}', profile_version, content)
                
                with open(file_path, 'w') as f:
                    f.write(updated_content)
                print(f"Processed file: {file_path}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Copy FSH files and update profile version.')
    parser.add_argument('profile_version', type=str, help='The profile version to use for replacement.')
    parser.add_argument('src_directory', type=str, help='The source directory containing FSH files to copy.')
    parser.add_argument('dst_directory', type=str, help='The destination directory to copy FSH files to and process.')

    args = parser.parse_args()
    copy_files(args.src_directory, args.dst_directory)
    process_fsh_files(args.dst_directory, args.profile_version)
