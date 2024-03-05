# Bash Backup Project

This simple project automates regular backups of your important files and provides a mechanism to check that the backups are working as expected.

## Usage

### Backup Script (`backup_script.sh`)

To perform a backup, run the `backup_script.sh` script with the following parameters:

```bash
./backup_script.sh <source_directory> <destination_directory>
```

- `<source_directory>`: The directory containing the files you want to backup.
- `<destination_directory>`: The directory where you want to store the backups.

Example:
```bash
./backup_script.sh /path/to/important/files /path/to/backup/storage
```

### Check Backup Script (`check_backup.sh`)

To check the status of your backups, run the `check_backup.sh` script with the following parameter:

```bash
./check_backup.sh <destination_directory>
```

- `<destination_directory>`: The directory where your backups are stored.

Example:
```bash
./check_backup.sh /path/to/backup/storage
```

## Integration with Cloud Services (e.g., AWS)

You can easily integrate this backup solution with cloud services like AWS by mounting an AWS S3 bucket to your local filesystem using tools like `s3fs`. Then, you can use the mounted directory as the destination directory for your backups.

Example:
```bash
./backup_script.sh /path/to/important/files /mnt/s3_bucket
./check_backup.sh /mnt/s3_bucket
```

