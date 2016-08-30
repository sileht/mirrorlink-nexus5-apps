.class enum Lcom/lge/bnr/framework/LGBackupErrorCode$1;
.super Lcom/lge/bnr/framework/LGBackupErrorCode;
.source "LGBackupErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bnr/framework/LGBackupErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p3, "$anonymous0"    # I

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/bnr/framework/LGBackupErrorCode;-><init>(Ljava/lang/String;IILcom/lge/bnr/framework/LGBackupErrorCode;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    const-string v0, ""

    return-object v0
.end method
