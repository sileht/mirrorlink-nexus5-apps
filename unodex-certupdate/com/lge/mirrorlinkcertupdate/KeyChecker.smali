.class public Lcom/lge/mirrorlinkcertupdate/KeyChecker;
.super Landroid/app/Activity;
.source "KeyChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlinkcertupdate/KeyChecker$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyChecker"


# instance fields
.field private mCert:Ljava/security/cert/X509Certificate;

.field private mContext:Landroid/content/Context;

.field private mCrtUpdater:Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

.field private mDate:Ljava/util/Date;

.field private mDeviceCertImporter:Lcom/lge/mirrorlink/certificate/DeviceCertImporter;

.field private mTZMirrorLinkConnection:Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlinkcertupdate/KeyChecker;)Lcom/lge/mirrorlinkcertupdate/CrtUpdater;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mCrtUpdater:Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/lge/mirrorlinkcertupdate/KeyChecker;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p1, "crtFilename"    # Ljava/lang/String;
    .param p2, "requireEKU"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->printKeyInfo(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/lge/mirrorlinkcertupdate/KeyChecker;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->verifyPrivateKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/lge/mirrorlinkcertupdate/KeyChecker;)V
    .registers 1

    invoke-direct {p0}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->initCrtFiles()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/lge/mirrorlinkcertupdate/KeyChecker;Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->showVerifyKeysDialog(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mCrtUpdater:Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    .line 33
    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mContext:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mDeviceCertImporter:Lcom/lge/mirrorlink/certificate/DeviceCertImporter;

    .line 35
    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mCert:Ljava/security/cert/X509Certificate;

    .line 36
    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mDate:Ljava/util/Date;

    .line 38
    new-instance v0, Lcom/lge/mirrorlinkcertupdate/KeyChecker$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlinkcertupdate/KeyChecker$1;-><init>(Lcom/lge/mirrorlinkcertupdate/KeyChecker;)V

    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mTZMirrorLinkConnection:Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;

    .line 28
    return-void
.end method

.method private compareResToFile(Ljava/lang/String;)Z
    .registers 12
    .param p1, "crtFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 112
    new-instance v0, Ljava/io/File;

    const-string/jumbo v5, "/data/misc/mirrorlink/"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".crt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v0, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 114
    .local v4, "res_byte":I
    const/4 v1, 0x0

    .line 115
    .local v1, "file_byte":I
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_44

    .line 116
    const-string/jumbo v5, "KeyChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file not exists:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v9

    .line 119
    :cond_44
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 120
    .local v2, "fis":Ljava/io/FileInputStream;
    iget-object v5, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 121
    iget-object v6, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 123
    const-string/jumbo v7, "raw"

    iget-object v8, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 121
    invoke-virtual {v6, p1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 120
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 125
    .local v3, "is_res":Ljava/io/InputStream;
    :cond_66
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 126
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v1

    .line 127
    if-eq v4, v1, :cond_71

    .line 128
    return v9

    .line 130
    :cond_71
    if-gtz v4, :cond_66

    if-gtz v1, :cond_66

    .line 132
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 133
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 135
    const/4 v5, 0x1

    return v5
.end method

.method private initCrtFiles()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v2, Ljava/io/File;

    const-string/jumbo v9, "/data/misc/mirrorlink/"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, "dirfile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 141
    .local v4, "files":[Ljava/io/File;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    sget-object v9, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    array-length v9, v9

    if-ge v5, v9, :cond_123

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "crt_file_exists":Z
    const/4 v7, 0x0

    .line 144
    .local v7, "update_file_exists":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".crt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "crt_filename":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".crt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".update"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "update_filename":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4c
    array-length v9, v4

    if-ge v6, v9, :cond_67

    .line 147
    aget-object v9, v4, v6

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "filename":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 149
    const/4 v0, 0x1

    .line 146
    :cond_5c
    :goto_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    .line 150
    :cond_5f
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 151
    const/4 v7, 0x1

    goto :goto_5c

    .line 155
    .end local v3    # "filename":Ljava/lang/String;
    :cond_67
    if-nez v0, :cond_bc

    .line 156
    const-string/jumbo v9, "KeyChecker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "initCrtFiles(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".crt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v9, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v9, v9, v5

    .line 158
    new-instance v10, Ljava/io/File;

    const-string/jumbo v11, "/data/misc/mirrorlink/"

    .line 159
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v13, v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".crt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 158
    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, v9, v10}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->writeResfile(Ljava/lang/String;Ljava/io/File;)V

    .line 161
    :cond_bc
    if-nez v7, :cond_11f

    .line 162
    const-string/jumbo v9, "KeyChecker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "initCrtFiles(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 163
    const-string/jumbo v11, ".crt"

    .line 162
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 163
    const-string/jumbo v11, ".update.20150317"

    .line 162
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 163
    const-string/jumbo v11, " is not found"

    .line 162
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v9, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v9, v9, v5

    .line 165
    new-instance v10, Ljava/io/File;

    const-string/jumbo v11, "/data/misc/mirrorlink/"

    .line 166
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v13, v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".crt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".update.20150317"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 165
    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, v9, v10}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->writeResfile(Ljava/lang/String;Ljava/io/File;)V

    .line 141
    :cond_11f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_d

    .line 138
    .end local v0    # "crt_file_exists":Z
    .end local v1    # "crt_filename":Ljava/lang/String;
    .end local v6    # "j":I
    .end local v7    # "update_file_exists":Z
    .end local v8    # "update_filename":Ljava/lang/String;
    :cond_123
    return-void
.end method

.method private printKeyInfo(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p1, "crtFilename"    # Ljava/lang/String;
    .param p2, "requireEKU"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v1, "strbuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->compareResToFile(Ljava/lang/String;)Z

    move-result v0

    .line 95
    .local v0, "result":Z
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".crt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n  - binary compare : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    if-eqz v0, :cond_63

    .line 97
    const-string/jumbo v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :goto_22
    iget-object v2, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mDeviceCertImporter:Lcom/lge/mirrorlink/certificate/DeviceCertImporter;

    invoke-virtual {v2, p1, p2}, Lcom/lge/mirrorlink/certificate/DeviceCertImporter;->importCert(Ljava/lang/String;Z)Ljava/security/cert/X509Certificate;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mCert:Ljava/security/cert/X509Certificate;

    .line 102
    iget-object v2, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mCert:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_5e

    .line 103
    iget-object v2, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mDate:Ljava/util/Date;

    .line 104
    const-string/jumbo v2, "\n  - Not Before : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v2, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mDate:Ljava/util/Date;

    .line 106
    const-string/jumbo v2, "\n  - Not After : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 99
    :cond_63
    const-string/jumbo v2, "FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22
.end method

.method private showVerifyKeysDialog(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    const-string/jumbo v1, "MirrorLink - Verify Keys"

    .line 189
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 192
    const v1, 0x108009b

    .line 189
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/lge/mirrorlinkcertupdate/KeyChecker$2;

    invoke-direct {v1, p0}, Lcom/lge/mirrorlinkcertupdate/KeyChecker$2;-><init>(Lcom/lge/mirrorlinkcertupdate/KeyChecker;)V

    const v2, 0x104000a

    .line 189
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 188
    return-void
.end method

.method private verifyPrivateKey()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v2, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mCrtUpdater:Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    invoke-virtual {v2}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->verifyPrivateKey()I

    move-result v0

    .line 78
    .local v0, "rt":I
    packed-switch v0, :pswitch_data_16

    .line 86
    :pswitch_9
    const-string/jumbo v1, "FAIL"

    .line 89
    .local v1, "str":Ljava/lang/String;
    :goto_c
    return-object v1

    .line 80
    .end local v1    # "str":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v1, "SUCCESS"

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_c

    .line 83
    .end local v1    # "str":Ljava/lang/String;
    :pswitch_11
    const-string/jumbo v1, "SERVICE_FAIL\n  - Please, retry this test!"

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_c

    .line 78
    nop

    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_11
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method private writeResfile(Ljava/lang/String;Ljava/io/File;)V
    .registers 12
    .param p1, "crtFileName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 172
    const-string/jumbo v4, "KeyChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeResfile() filename="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v4, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 174
    iget-object v5, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 176
    const-string/jumbo v6, "raw"

    iget-object v7, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-virtual {v5, p1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 173
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 177
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 179
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 181
    .local v0, "buf":[B
    :goto_45
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_4f

    .line 182
    invoke-virtual {v3, v0, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_45

    .line 184
    :cond_4f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 185
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 171
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    iget-object v1, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mCrtUpdater:Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    .line 70
    iget-object v0, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mCrtUpdater:Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    iget-object v1, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mTZMirrorLinkConnection:Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->setTZMirrorLinkConnCallback(Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;)V

    .line 71
    iget-object v0, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mCrtUpdater:Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    invoke-virtual {v0}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->bindTZMirrorLinkService()Z

    .line 72
    new-instance v0, Lcom/lge/mirrorlink/certificate/DeviceCertImporter;

    iget-object v1, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/certificate/DeviceCertImporter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->mDeviceCertImporter:Lcom/lge/mirrorlink/certificate/DeviceCertImporter;

    .line 65
    return-void
.end method
