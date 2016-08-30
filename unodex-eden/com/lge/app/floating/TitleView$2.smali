.class Lcom/lge/app/floating/TitleView$2;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/TitleView;->performClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/TitleView;


# direct methods
.method constructor <init>(Lcom/lge/app/floating/TitleView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/floating/TitleView$2;->this$0:Lcom/lge/app/floating/TitleView;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$2;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-virtual {v0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->closeInner()V

    .line 454
    return-void
.end method
