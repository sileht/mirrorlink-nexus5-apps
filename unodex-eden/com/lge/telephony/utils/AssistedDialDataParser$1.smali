.class Lcom/lge/telephony/utils/AssistedDialDataParser$1;
.super Landroid/os/Handler;
.source "AssistedDialDataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/utils/AssistedDialDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/telephony/utils/AssistedDialDataParser;


# direct methods
.method constructor <init>(Lcom/lge/telephony/utils/AssistedDialDataParser;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser$1;->this$0:Lcom/lge/telephony/utils/AssistedDialDataParser;

    .line 38
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_a

    .line 42
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser$1;->this$0:Lcom/lge/telephony/utils/AssistedDialDataParser;

    invoke-static {v0, v1}, Lcom/lge/telephony/utils/AssistedDialDataParser;->access$0(Lcom/lge/telephony/utils/AssistedDialDataParser;Z)V

    .line 44
    :cond_a
    return-void
.end method
