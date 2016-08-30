.class Lcom/lge/systemservice/core/WfdServiceListener$1;
.super Lcom/lge/systemservice/core/IWfdServiceListener$Stub;
.source "WfdServiceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/WfdServiceListener;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/WfdServiceListener;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/WfdServiceListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/systemservice/core/WfdServiceListener$1;->this$0:Lcom/lge/systemservice/core/WfdServiceListener;

    .line 19
    invoke-direct {p0}, Lcom/lge/systemservice/core/IWfdServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/lge/systemservice/core/WfdServiceListener$1;->onFailure(I)V

    .line 27
    return-void
.end method

.method public onSuccess()V
    .registers 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/lge/systemservice/core/WfdServiceListener$1;->onSuccess()V

    .line 23
    return-void
.end method
