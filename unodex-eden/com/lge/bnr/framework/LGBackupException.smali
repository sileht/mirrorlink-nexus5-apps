.class public Lcom/lge/bnr/framework/LGBackupException;
.super Ljava/lang/Exception;
.source "LGBackupException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public error:Lcom/lge/bnr/framework/LGBackupErrorCode;


# direct methods
.method public constructor <init>(Lcom/lge/bnr/framework/LGBackupErrorCode;)V
    .registers 3
    .param p1, "error"    # Lcom/lge/bnr/framework/LGBackupErrorCode;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 22
    sget-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->UNDEFINED_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupException;->error:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 26
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupException;->error:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "code"    # Lcom/lge/bnr/framework/LGBackupErrorCode;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 52
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 22
    sget-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->UNDEFINED_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupException;->error:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 53
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupException;->error:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 5
    .param p1, "code"    # Lcom/lge/bnr/framework/LGBackupErrorCode;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p3, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    sget-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->UNDEFINED_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupException;->error:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 48
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupException;->error:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Lcom/lge/bnr/framework/LGBackupErrorCode;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->UNDEFINED_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupException;->error:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 31
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupException;->error:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/lge/bnr/framework/LGBackupErrorCode;->UNDEFINED_ERROR:Lcom/lge/bnr/framework/LGBackupErrorCode;

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupException;->error:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 36
    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/lge/bnr/framework/LGBackupErrorCode;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupException;->error:Lcom/lge/bnr/framework/LGBackupErrorCode;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupException;->error:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v1}, Lcom/lge/bnr/framework/LGBackupErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 64
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
