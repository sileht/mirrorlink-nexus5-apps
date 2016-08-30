.class public abstract enum Lcom/lge/bnr/framework/LGBackupErrorCode;
.super Ljava/lang/Enum;
.source "LGBackupErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/bnr/framework/LGBackupErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_VERSION_PROBLEM:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum CRYPTO_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum DB_ACCESS_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum DB_TRANSACTION_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum ETC_CANCEL_ALL:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum ETC_MEMORY_FULL:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum ETC_NO_SDCARD:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum ETC_NO_SPACE:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum ETC_NO_STORAGE_PERMISSION:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum ETC_UNKNOWN:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum INVALID_BACKUP_NAME:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum INVALID_OPERATION:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum INVALID_PARAM:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LBFILEMGR_ACCESS_DENIED:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LBFILEMGR_FAIL_TO_READ:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LBFILEMGR_FAIL_TO_WRITE:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LBFILEMGR_FILE_NOT_FOUND:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LBFILEMGR_INVALID_PASSWORD:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LINKBACKUPMGR_FAIL_TO_RENAME:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LINKBACKUPMNGR_FAIL_TO_CREATE_DATAFILE:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LINKBACKUPMNGR_FAIL_TO_LOCK:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LINKBACKUPMNGR_FAIL_TO_PARSE_HDR:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LINKBACKUPMNGR_FAIL_TO_UNLOCK:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LINKBACKUPMNGR_VERSION_NOT_SUPPORT:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LINKBACKUP_FAIL_TO_BACKUP:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LINKBACKUP_FAIL_TO_BACKUP_GEN_HDR:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum LINKBACKUP_FAIL_TO_BACKUP_NO_DATA:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum NO_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum SBF_DB_TRANS_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum SBF_IMAGEFILE_FORMAT_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum SBF_IO_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum SBF_NO_ELEMENT:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum SBF_NO_ENTRY:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum SBF_NO_PKGINFO:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum SBF_SECURITY_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum SBF_SERVICE_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum SBF_SETTING_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum SYSTEMSERVICE_EXEC_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

.field public static final enum UNDEFINED_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$1;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/lge/bnr/framework/LGBackupErrorCode$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->NO_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 19
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$2;

    const-string v1, "INVALID_PARAM"

    invoke-direct {v0, v1, v5, v5}, Lcom/lge/bnr/framework/LGBackupErrorCode$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->INVALID_PARAM:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 25
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$3;

    const-string v1, "CRYPTO_ERROR"

    invoke-direct {v0, v1, v6, v6}, Lcom/lge/bnr/framework/LGBackupErrorCode$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->CRYPTO_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 31
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$4;

    const-string v1, "SYSTEMSERVICE_EXEC_ERR"

    invoke-direct {v0, v1, v7, v7}, Lcom/lge/bnr/framework/LGBackupErrorCode$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->SYSTEMSERVICE_EXEC_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 37
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$5;

    const-string v1, "INVALID_BACKUP_NAME"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v8}, Lcom/lge/bnr/framework/LGBackupErrorCode$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->INVALID_BACKUP_NAME:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 43
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$6;

    const-string v1, "LBFILEMGR_FAIL_TO_WRITE"

    const/4 v2, 0x5

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$6;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_WRITE:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 49
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$7;

    const-string v1, "LBFILEMGR_FAIL_TO_READ"

    const/4 v2, 0x6

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_READ:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 55
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$8;

    const-string v1, "LBFILEMGR_ACCESS_DENIED"

    const/4 v2, 0x7

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$8;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_ACCESS_DENIED:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 61
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$9;

    const-string v1, "LBFILEMGR_FILE_NOT_FOUND"

    const/16 v2, 0x8

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$9;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FILE_NOT_FOUND:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 67
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$10;

    const-string v1, "LINKBACKUP_FAIL_TO_BACKUP"

    const/16 v2, 0x9

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$10;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUP_FAIL_TO_BACKUP:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 73
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$11;

    const-string v1, "LINKBACKUP_FAIL_TO_BACKUP_NO_DATA"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v8, v2}, Lcom/lge/bnr/framework/LGBackupErrorCode$11;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUP_FAIL_TO_BACKUP_NO_DATA:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 79
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$12;

    const-string v1, "LINKBACKUP_FAIL_TO_BACKUP_GEN_HDR"

    const/16 v2, 0xb

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$12;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUP_FAIL_TO_BACKUP_GEN_HDR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 85
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$13;

    const-string v1, "LINKBACKUPMNGR_FAIL_TO_PARSE_HDR"

    const/16 v2, 0xc

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$13;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUPMNGR_FAIL_TO_PARSE_HDR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 91
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$14;

    const-string v1, "LINKBACKUPMNGR_FAIL_TO_CREATE_DATAFILE"

    const/16 v2, 0xd

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$14;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUPMNGR_FAIL_TO_CREATE_DATAFILE:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 97
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$15;

    const-string v1, "LINKBACKUPMGR_FAIL_TO_RENAME"

    const/16 v2, 0xe

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$15;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUPMGR_FAIL_TO_RENAME:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 103
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$16;

    const-string v1, "LINKBACKUPMNGR_FAIL_TO_LOCK"

    const/16 v2, 0xf

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$16;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUPMNGR_FAIL_TO_LOCK:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 109
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$17;

    const-string v1, "LINKBACKUPMNGR_FAIL_TO_UNLOCK"

    const/16 v2, 0x10

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$17;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUPMNGR_FAIL_TO_UNLOCK:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 115
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$18;

    const-string v1, "LBFILEMGR_INVALID_PASSWORD"

    const/16 v2, 0x11

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$18;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_INVALID_PASSWORD:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 121
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$19;

    const-string v1, "LINKBACKUPMNGR_VERSION_NOT_SUPPORT"

    const/16 v2, 0x12

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$19;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUPMNGR_VERSION_NOT_SUPPORT:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 127
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$20;

    const-string v1, "DB_ACCESS_ERR"

    const/16 v2, 0x13

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$20;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->DB_ACCESS_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 133
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$21;

    const-string v1, "DB_TRANSACTION_ERR"

    const/16 v2, 0x14

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$21;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->DB_TRANSACTION_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 139
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$22;

    const-string v1, "SBF_IO_ERR"

    const/16 v2, 0x15

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$22;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_IO_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 145
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$23;

    const-string v1, "SBF_IMAGEFILE_FORMAT_ERR"

    const/16 v2, 0x16

    const/16 v3, 0x3d

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$23;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_IMAGEFILE_FORMAT_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 151
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$24;

    const-string v1, "SBF_NO_ENTRY"

    const/16 v2, 0x17

    const/16 v3, 0x3e

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$24;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_NO_ENTRY:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 157
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$25;

    const-string v1, "SBF_NO_ELEMENT"

    const/16 v2, 0x18

    const/16 v3, 0x3f

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$25;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_NO_ELEMENT:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 163
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$26;

    const-string v1, "SBF_DB_TRANS_ERR"

    const/16 v2, 0x19

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$26;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_DB_TRANS_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 169
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$27;

    const-string v1, "SBF_NO_PKGINFO"

    const/16 v2, 0x1a

    const/16 v3, 0x41

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$27;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_NO_PKGINFO:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 175
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$28;

    const-string v1, "SBF_SECURITY_ERR"

    const/16 v2, 0x1b

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$28;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_SECURITY_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 181
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$29;

    const-string v1, "SBF_SETTING_ERR"

    const/16 v2, 0x1c

    const/16 v3, 0x43

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$29;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_SETTING_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 187
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$30;

    const-string v1, "SBF_SERVICE_ERR"

    const/16 v2, 0x1d

    const/16 v3, 0x44

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$30;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_SERVICE_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 193
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$31;

    const-string v1, "APP_VERSION_PROBLEM"

    const/16 v2, 0x1e

    const/16 v3, 0x46

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$31;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->APP_VERSION_PROBLEM:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 199
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$32;

    const-string v1, "ETC_MEMORY_FULL"

    const/16 v2, 0x1f

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$32;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_MEMORY_FULL:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 205
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$33;

    const-string v1, "ETC_CANCEL_ALL"

    const/16 v2, 0x20

    const/16 v3, 0x5b

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$33;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_CANCEL_ALL:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 211
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$34;

    const-string v1, "ETC_NO_SDCARD"

    const/16 v2, 0x21

    const/16 v3, 0x5c

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$34;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_NO_SDCARD:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 217
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$35;

    const-string v1, "ETC_UNKNOWN"

    const/16 v2, 0x22

    const/16 v3, 0x5d

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$35;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_UNKNOWN:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 223
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$36;

    const-string v1, "ETC_NO_STORAGE_PERMISSION"

    const/16 v2, 0x23

    const/16 v3, 0x5e

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$36;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_NO_STORAGE_PERMISSION:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 229
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$37;

    const-string v1, "INVALID_OPERATION"

    const/16 v2, 0x24

    const/16 v3, 0x5f

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$37;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->INVALID_OPERATION:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 235
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$38;

    const-string v1, "UNDEFINED_ERROR"

    const/16 v2, 0x25

    const/16 v3, 0x63

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$38;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->UNDEFINED_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 241
    new-instance v0, Lcom/lge/bnr/framework/LGBackupErrorCode$39;

    const-string v1, "ETC_NO_SPACE"

    const/16 v2, 0x26

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/bnr/framework/LGBackupErrorCode$39;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_NO_SPACE:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 11
    const/16 v0, 0x27

    new-array v0, v0, [Lcom/lge/bnr/framework/LGBackupErrorCode;

    sget-object v1, Lcom/lge/bnr/framework/LGBackupErrorCode;->NO_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/bnr/framework/LGBackupErrorCode;->INVALID_PARAM:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/bnr/framework/LGBackupErrorCode;->CRYPTO_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/bnr/framework/LGBackupErrorCode;->SYSTEMSERVICE_EXEC_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->INVALID_BACKUP_NAME:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_WRITE:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_READ:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_ACCESS_DENIED:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FILE_NOT_FOUND:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUP_FAIL_TO_BACKUP:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUP_FAIL_TO_BACKUP_NO_DATA:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v1, v0, v8

    const/16 v1, 0xb

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUP_FAIL_TO_BACKUP_GEN_HDR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUPMNGR_FAIL_TO_PARSE_HDR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUPMNGR_FAIL_TO_CREATE_DATAFILE:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUPMGR_FAIL_TO_RENAME:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUPMNGR_FAIL_TO_LOCK:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUPMNGR_FAIL_TO_UNLOCK:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_INVALID_PASSWORD:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->LINKBACKUPMNGR_VERSION_NOT_SUPPORT:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->DB_ACCESS_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->DB_TRANSACTION_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_IO_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_IMAGEFILE_FORMAT_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_NO_ENTRY:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_NO_ELEMENT:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_DB_TRANS_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_NO_PKGINFO:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_SECURITY_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_SETTING_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->SBF_SERVICE_ERR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->APP_VERSION_PROBLEM:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_MEMORY_FULL:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_CANCEL_ALL:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_NO_SDCARD:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_UNKNOWN:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_NO_STORAGE_PERMISSION:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->INVALID_OPERATION:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->UNDEFINED_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_NO_SPACE:Lcom/lge/bnr/framework/LGBackupErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->ENUM$VALUES:[Lcom/lge/bnr/framework/LGBackupErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 248
    iput p3, p0, Lcom/lge/bnr/framework/LGBackupErrorCode;->value:I

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/lge/bnr/framework/LGBackupErrorCode;)V
    .registers 5

    .prologue
    .line 247
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/bnr/framework/LGBackupErrorCode;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/bnr/framework/LGBackupErrorCode;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/bnr/framework/LGBackupErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/lge/bnr/framework/LGBackupErrorCode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->ENUM$VALUES:[Lcom/lge/bnr/framework/LGBackupErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method abstract getMessage()Ljava/lang/String;
.end method

.method public value()I
    .registers 2

    .prologue
    .line 254
    iget v0, p0, Lcom/lge/bnr/framework/LGBackupErrorCode;->value:I

    return v0
.end method
