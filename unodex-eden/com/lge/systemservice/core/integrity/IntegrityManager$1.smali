.class Lcom/lge/systemservice/core/integrity/IntegrityManager$1;
.super Ljava/lang/Object;
.source "IntegrityManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/integrity/IntegrityManager;->getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/integrity/IntegrityManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/integrity/IntegrityManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager$1;->this$0:Lcom/lge/systemservice/core/integrity/IntegrityManager;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager$1;->this$0:Lcom/lge/systemservice/core/integrity/IntegrityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->access$0(Lcom/lge/systemservice/core/integrity/IntegrityManager;Lcom/lge/systemservice/core/integrity/IIntegrityManager;)V

    return-void
.end method
