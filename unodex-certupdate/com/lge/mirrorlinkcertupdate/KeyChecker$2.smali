.class Lcom/lge/mirrorlinkcertupdate/KeyChecker$2;
.super Ljava/lang/Object;
.source "KeyChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mirrorlinkcertupdate/KeyChecker;->showVerifyKeysDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlinkcertupdate/KeyChecker;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlinkcertupdate/KeyChecker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlinkcertupdate/KeyChecker;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker$2;->this$0:Lcom/lge/mirrorlinkcertupdate/KeyChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker$2;->this$0:Lcom/lge/mirrorlinkcertupdate/KeyChecker;

    invoke-virtual {v0}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->finish()V

    .line 195
    return-void
.end method
