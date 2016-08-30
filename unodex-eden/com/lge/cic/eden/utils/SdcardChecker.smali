.class public Lcom/lge/cic/eden/utils/SdcardChecker;
.super Ljava/lang/Object;
.source "SdcardChecker.java"


# static fields
.field private static logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/lge/cic/eden/utils/SdcardChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/utils/SdcardChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalSdPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 14
    if-nez p0, :cond_d

    .line 15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_d
    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 19
    .local v0, "files":[Ljava/io/File;
    array-length v3, v0

    if-ge v3, v6, :cond_15

    .line 32
    :cond_14
    :goto_14
    return-object v2

    .line 23
    :cond_15
    aget-object v3, v0, v5

    if-eqz v3, :cond_14

    .line 27
    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "split":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_14

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_14
.end method

.method public static getStorageFilter(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/lge/cic/eden/utils/SdcardChecker;->isInternalMounted(Landroid/content/Context;)Z

    move-result v0

    .line 74
    .local v0, "isPrimaryMounted":Z
    invoke-static {p0}, Lcom/lge/cic/eden/utils/SdcardChecker;->isSdcardMounted(Landroid/content/Context;)Z

    move-result v1

    .line 76
    .local v1, "isSdcardMounted":Z
    const-string v2, ""

    .line 77
    .local v2, "storageFilter":Ljava/lang/String;
    if-nez v0, :cond_10

    if-nez v1, :cond_10

    .line 79
    const/4 v3, 0x0

    .line 90
    :goto_f
    return-object v3

    .line 80
    :cond_10
    if-eqz v0, :cond_18

    if-nez v1, :cond_18

    .line 82
    const-string v2, "storage_id = 65537"

    :cond_16
    :goto_16
    move-object v3, v2

    .line 90
    goto :goto_f

    .line 83
    :cond_18
    if-nez v0, :cond_1f

    if-eqz v1, :cond_1f

    .line 85
    const-string v2, "storage_id = 131073"

    .line 86
    goto :goto_16

    :cond_1f
    if-eqz v0, :cond_16

    if-eqz v1, :cond_16

    .line 88
    const-string v2, "(storage_id IN (65537,131073))"

    goto :goto_16
.end method

.method public static isInternalMounted(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const-string v0, "/storage/emulated/0/"

    .line 62
    .local v0, "internalPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v3, "/storage/emulated/0/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "status":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 64
    :cond_1d
    sget-object v2, Lcom/lge/cic/eden/utils/SdcardChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isInternalMounted()- connected : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 66
    const/4 v2, 0x1

    .line 69
    :goto_32
    return v2

    .line 68
    :cond_33
    sget-object v2, Lcom/lge/cic/eden/utils/SdcardChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isInternalMounted()- disconnected : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 69
    const/4 v2, 0x0

    goto :goto_32
.end method

.method public static isSdcardMounted(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 37
    :try_start_1
    invoke-static {p0}, Lcom/lge/cic/eden/utils/SdcardChecker;->getExternalSdPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "externalSdPath":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 54
    .end local v1    # "externalSdPath":Ljava/lang/String;
    :goto_7
    return v3

    .line 43
    .restart local v1    # "externalSdPath":Ljava/lang/String;
    :cond_8
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "status":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "mounted_ro"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 45
    :cond_21
    sget-object v4, Lcom/lge/cic/eden/utils/SdcardChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isSdcardMounted()- connected : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x1

    goto :goto_7

    .line 49
    :cond_37
    sget-object v4, Lcom/lge/cic/eden/utils/SdcardChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isSdcardMounted()- disconnected : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4b} :catch_4c

    goto :goto_7

    .line 51
    .end local v1    # "externalSdPath":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/String;
    :catch_4c
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/lge/cic/eden/utils/SdcardChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_7
.end method
