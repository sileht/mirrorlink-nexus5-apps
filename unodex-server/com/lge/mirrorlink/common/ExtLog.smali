.class public abstract Lcom/lge/mirrorlink/common/ExtLog;
.super Ljava/lang/Object;
.source "ExtLog.java"


# static fields
.field private static final HEX_CHAR:[B

.field private static final LEVEL_D:I = 0x3

.field private static final LEVEL_E:I = 0x0

.field private static final LEVEL_I:I = 0x2

.field private static final LEVEL_V:I = 0x4

.field private static final LEVEL_W:I = 0x1

.field private static final LOG_PATH:Ljava/lang/String;

.field private static final SDCARD_PATH:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "MirrorLinkServer"

.field public static final TAG_CDB:Ljava/lang/String; = "MirrorLink_CDB"

.field public static final TAG_CERT:Ljava/lang/String; = "MirrorLink_Cert"

.field public static final TAG_DAP:Ljava/lang/String; = "MirrorLink_DAP"

.field public static final TAG_RTP:Ljava/lang/String; = "MirrorLink_RTP"

.field public static final TAG_UPNP:Ljava/lang/String; = "MirrorLink_UPnP"

.field public static final TAG_VNC:Ljava/lang/String; = "MirrorLink_VNC"

.field public static formatter:Ljava/text/SimpleDateFormat;

.field public static mEnableFileLog:Z

.field public static mEnabled:Z

.field private static mLogBufferBeforeSDCardReady:Ljava/lang/StringBuffer;

.field private static mLogOut:Ljava/io/FileWriter;

.field private static ste:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnabled:Z

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnableFileLog:Z

    .line 25
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/common/ExtLog;->SDCARD_PATH:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mllog/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/common/ExtLog;->LOG_PATH:Ljava/lang/String;

    .line 27
    sput-object v2, Lcom/lge/mirrorlink/common/ExtLog;->mLogBufferBeforeSDCardReady:Ljava/lang/StringBuffer;

    .line 28
    sput-object v2, Lcom/lge/mirrorlink/common/ExtLog;->mLogOut:Ljava/io/FileWriter;

    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_42

    sput-object v0, Lcom/lge/mirrorlink/common/ExtLog;->HEX_CHAR:[B

    .line 208
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/common/ExtLog;->formatter:Ljava/text/SimpleDateFormat;

    .line 12
    return-void

    .line 36
    nop

    :array_42
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BytesToHexString([B)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B

    .prologue
    .line 42
    if-nez p0, :cond_6

    .line 43
    const-string/jumbo v2, "null"

    return-object v2

    .line 46
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 48
    sget-object v2, Lcom/lge/mirrorlink/common/ExtLog;->HEX_CHAR:[B

    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lge/mirrorlink/common/ExtLog;->HEX_CHAR:[B

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 51
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 155
    sget-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnabled:Z

    if-eqz v0, :cond_6f

    .line 156
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnableFileLog:Z

    if-eqz v0, :cond_6f

    .line 160
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/lge/mirrorlink/common/ExtLog;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_6f
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 168
    sget-boolean v2, Lcom/lge/mirrorlink/common/ExtLog;->mEnabled:Z

    if-eqz v2, :cond_28

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v1, "data":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    array-length v3, p1

    :goto_b
    if-ge v2, v3, :cond_15

    aget-object v0, p1, v2

    .line 171
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 173
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-boolean v2, Lcom/lge/mirrorlink/common/ExtLog;->mEnableFileLog:Z

    if-eqz v2, :cond_28

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, p0, v2}, Lcom/lge/mirrorlink/common/ExtLog;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v1    # "data":Ljava/lang/StringBuilder;
    :cond_28
    return-void
.end method

.method public static e(Ljava/lang/Error;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Error;

    .prologue
    .line 67
    sget-boolean v1, Lcom/lge/mirrorlink/common/ExtLog;->mEnabled:Z

    if-eqz v1, :cond_15

    .line 68
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    .line 69
    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->mLogOut:Ljava/io/FileWriter;

    if-eqz v1, :cond_15

    .line 70
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->mLogOut:Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 71
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Error;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 65
    .end local v0    # "writer":Ljava/io/PrintWriter;
    :cond_15
    return-void
.end method

.method public static e(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 56
    sget-boolean v1, Lcom/lge/mirrorlink/common/ExtLog;->mEnabled:Z

    if-eqz v1, :cond_15

    .line 57
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->mLogOut:Ljava/io/FileWriter;

    if-eqz v1, :cond_15

    .line 59
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->mLogOut:Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 54
    .end local v0    # "writer":Ljava/io/PrintWriter;
    :cond_15
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 78
    sget-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnabled:Z

    if-eqz v0, :cond_6f

    .line 79
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnableFileLog:Z

    if-eqz v0, :cond_6f

    .line 83
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/lge/mirrorlink/common/ExtLog;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_6f
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    sget-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnabled:Z

    if-eqz v0, :cond_2a

    .line 91
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    sget-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnableFileLog:Z

    if-eqz v0, :cond_2a

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/lge/mirrorlink/common/ExtLog;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_2a
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 128
    sget-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnabled:Z

    if-eqz v0, :cond_6f

    .line 129
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnableFileLog:Z

    if-eqz v0, :cond_6f

    .line 133
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/lge/mirrorlink/common/ExtLog;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_6f
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 141
    sget-boolean v2, Lcom/lge/mirrorlink/common/ExtLog;->mEnabled:Z

    if-eqz v2, :cond_28

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v1, "data":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    array-length v3, p1

    :goto_b
    if-ge v2, v3, :cond_15

    aget-object v0, p1, v2

    .line 144
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 146
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-boolean v2, Lcom/lge/mirrorlink/common/ExtLog;->mEnableFileLog:Z

    if-eqz v2, :cond_28

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3, p0, v2}, Lcom/lge/mirrorlink/common/ExtLog;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v1    # "data":Ljava/lang/StringBuilder;
    :cond_28
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 182
    sget-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnabled:Z

    if-eqz v0, :cond_6f

    .line 183
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnableFileLog:Z

    if-eqz v0, :cond_6f

    .line 187
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/lge/mirrorlink/common/ExtLog;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_6f
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 195
    sget-boolean v2, Lcom/lge/mirrorlink/common/ExtLog;->mEnabled:Z

    if-eqz v2, :cond_28

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v1, "data":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    array-length v3, p1

    :goto_b
    if-ge v2, v3, :cond_15

    aget-object v0, p1, v2

    .line 198
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 200
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-boolean v2, Lcom/lge/mirrorlink/common/ExtLog;->mEnableFileLog:Z

    if-eqz v2, :cond_28

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, p0, v2}, Lcom/lge/mirrorlink/common/ExtLog;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    .end local v1    # "data":Ljava/lang/StringBuilder;
    :cond_28
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 100
    sget-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnabled:Z

    if-eqz v0, :cond_6e

    .line 101
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/mirrorlink/common/ExtLog;->ste:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-boolean v0, Lcom/lge/mirrorlink/common/ExtLog;->mEnableFileLog:Z

    if-eqz v0, :cond_6e

    .line 106
    invoke-static {v2, p0, p1}, Lcom/lge/mirrorlink/common/ExtLog;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_6e
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 114
    sget-boolean v2, Lcom/lge/mirrorlink/common/ExtLog;->mEnabled:Z

    if-eqz v2, :cond_28

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v1, "data":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    array-length v3, p1

    :goto_b
    if-ge v2, v3, :cond_15

    aget-object v0, p1, v2

    .line 117
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 119
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-boolean v2, Lcom/lge/mirrorlink/common/ExtLog;->mEnableFileLog:Z

    if-eqz v2, :cond_28

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, p0, v2}, Lcom/lge/mirrorlink/common/ExtLog;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v1    # "data":Ljava/lang/StringBuilder;
    :cond_28
    return-void
.end method

.method public static declared-synchronized writeLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    const-class v8, Lcom/lge/mirrorlink/common/ExtLog;

    monitor-enter v8

    .line 211
    :try_start_3
    sget-object v7, Lcom/lge/mirrorlink/common/ExtLog;->mLogOut:Ljava/io/FileWriter;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_cb

    if-nez v7, :cond_70

    .line 213
    :try_start_7
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/lge/mirrorlink/common/ExtLog;->SDCARD_PATH:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v6, "path":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 215
    new-instance v6, Ljava/io/File;

    .end local v6    # "path":Ljava/io/File;
    sget-object v7, Lcom/lge/mirrorlink/common/ExtLog;->LOG_PATH:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v6    # "path":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_24

    .line 217
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 220
    :cond_24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/lge/mirrorlink/common/ExtLog;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "log_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lcom/lge/mirrorlink/common/ExtLog;->formatter:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ".txt"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_68

    .line 224
    new-instance v0, Ljava/io/File;

    sget-object v7, Lcom/lge/mirrorlink/common/ExtLog;->LOG_PATH:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 226
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 228
    .end local v0    # "dir":Ljava/io/File;
    :cond_68
    new-instance v7, Ljava/io/FileWriter;

    const/4 v9, 0x1

    invoke-direct {v7, v3, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sput-object v7, Lcom/lge/mirrorlink/common/ExtLog;->mLogOut:Ljava/io/FileWriter;
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_70} :catch_c6
    .catchall {:try_start_7 .. :try_end_70} :catchall_cb

    .line 234
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "path":Ljava/io/File;
    :cond_70
    :goto_70
    :try_start_70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v5, "log":Ljava/lang/StringBuilder;
    packed-switch p0, :pswitch_data_116

    .line 252
    :goto_78
    sget-object v7, Lcom/lge/mirrorlink/common/ExtLog;->formatter:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x3a

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 253
    const/16 v9, 0x3a

    .line 252
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 253
    const/16 v9, 0xa

    .line 252
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_a0
    .catchall {:try_start_70 .. :try_end_a0} :catchall_cb

    .line 255
    :try_start_a0
    sget-object v7, Lcom/lge/mirrorlink/common/ExtLog;->mLogOut:Ljava/io/FileWriter;

    if-eqz v7, :cond_f1

    .line 256
    sget-object v7, Lcom/lge/mirrorlink/common/ExtLog;->mLogBufferBeforeSDCardReady:Ljava/lang/StringBuffer;

    if-eqz v7, :cond_b6

    .line 257
    sget-object v7, Lcom/lge/mirrorlink/common/ExtLog;->mLogOut:Ljava/io/FileWriter;

    sget-object v9, Lcom/lge/mirrorlink/common/ExtLog;->mLogBufferBeforeSDCardReady:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 258
    const/4 v7, 0x0

    sput-object v7, Lcom/lge/mirrorlink/common/ExtLog;->mLogBufferBeforeSDCardReady:Ljava/lang/StringBuffer;

    .line 260
    :cond_b6
    sget-object v7, Lcom/lge/mirrorlink/common/ExtLog;->mLogOut:Ljava/io/FileWriter;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 261
    sget-object v7, Lcom/lge/mirrorlink/common/ExtLog;->mLogOut:Ljava/io/FileWriter;

    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_c4} :catch_106
    .catchall {:try_start_a0 .. :try_end_c4} :catchall_cb

    :goto_c4
    monitor-exit v8

    .line 209
    return-void

    .line 230
    .end local v5    # "log":Ljava/lang/StringBuilder;
    :catch_c6
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    :try_start_c7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_cb

    goto :goto_70

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_cb
    move-exception v7

    monitor-exit v8

    throw v7

    .line 237
    .restart local v5    # "log":Ljava/lang/StringBuilder;
    :pswitch_ce
    :try_start_ce
    const-string/jumbo v7, "E:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 240
    :pswitch_d5
    const-string/jumbo v7, "W:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 243
    :pswitch_dc
    const-string/jumbo v7, "I:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 246
    :pswitch_e3
    const-string/jumbo v7, "D:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 249
    :pswitch_ea
    const-string/jumbo v7, "V:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f0
    .catchall {:try_start_ce .. :try_end_f0} :catchall_cb

    goto :goto_78

    .line 264
    :cond_f1
    :try_start_f1
    sget-object v7, Lcom/lge/mirrorlink/common/ExtLog;->mLogBufferBeforeSDCardReady:Ljava/lang/StringBuffer;

    if-nez v7, :cond_fc

    .line 265
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v7, Lcom/lge/mirrorlink/common/ExtLog;->mLogBufferBeforeSDCardReady:Ljava/lang/StringBuffer;

    .line 268
    :cond_fc
    sget-object v7, Lcom/lge/mirrorlink/common/ExtLog;->mLogBufferBeforeSDCardReady:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_105} :catch_106
    .catchall {:try_start_f1 .. :try_end_105} :catchall_cb

    goto :goto_c4

    .line 270
    :catch_106
    move-exception v1

    .line 272
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_107
    sget-object v7, Lcom/lge/mirrorlink/common/ExtLog;->mLogOut:Ljava/io/FileWriter;

    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10c} :catch_113
    .catchall {:try_start_107 .. :try_end_10c} :catchall_cb

    .line 275
    :goto_10c
    :try_start_10c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    const/4 v7, 0x0

    sput-object v7, Lcom/lge/mirrorlink/common/ExtLog;->mLogOut:Ljava/io/FileWriter;
    :try_end_112
    .catchall {:try_start_10c .. :try_end_112} :catchall_cb

    goto :goto_c4

    .line 273
    :catch_113
    move-exception v2

    .local v2, "e1":Ljava/io/IOException;
    goto :goto_10c

    .line 235
    nop

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_d5
        :pswitch_dc
        :pswitch_e3
        :pswitch_ea
    .end packed-switch
.end method
