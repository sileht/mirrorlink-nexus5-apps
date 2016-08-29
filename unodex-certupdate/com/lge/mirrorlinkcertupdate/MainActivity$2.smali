.class Lcom/lge/mirrorlinkcertupdate/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mirrorlinkcertupdate/MainActivity;->showKeyLeakageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlinkcertupdate/MainActivity;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlinkcertupdate/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlinkcertupdate/MainActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity$2;->this$0:Lcom/lge/mirrorlinkcertupdate/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity$2;->this$0:Lcom/lge/mirrorlinkcertupdate/MainActivity;

    invoke-virtual {v0}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->finish()V

    .line 125
    return-void
.end method
