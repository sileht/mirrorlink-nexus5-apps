.class Lcom/lge/android/atservice/KeypadDevice$1;
.super Ljava/lang/Thread;
.source "KeypadDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/android/atservice/KeypadDevice;->LoggingKeyValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/KeypadDevice;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/KeypadDevice;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/KeypadDevice;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/16 v7, 0x13

    const/16 v6, 0x14

    const/4 v5, 0x0

    .line 106
    const-string/jumbo v2, "--------start Logging Key value -------"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 107
    :goto_d
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get56(Lcom/lge/android/atservice/KeypadDevice;)Z

    move-result v2

    if-eqz v2, :cond_6b0

    .line 108
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get16(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set31(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 109
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get47(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set36(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 110
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get0(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set19(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 111
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get14(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set30(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 112
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get46(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set35(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 113
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get53(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set42(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 114
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get54(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set43(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 115
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get19(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set34(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 116
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get55(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set44(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 117
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get18(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set33(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 118
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get52(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set41(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 119
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get51(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set40(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 120
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get11(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set27(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 121
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get10(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set26(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 122
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get49(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set38(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 123
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get48(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set37(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 124
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get9(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set25(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 125
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get17(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set32(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 126
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get12(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set28(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 127
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get50(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set39(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 128
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get1(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set20(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 129
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get8(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set24(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 130
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get5(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set21(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 131
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get7(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set23(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 132
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get6(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set22(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 133
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get13(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set29(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 136
    :try_start_133
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x52

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set15(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 137
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x54

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set46(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 138
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set0(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 139
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set14(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 140
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0xbb

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set45(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 141
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x19

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set52(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 142
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x18

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set53(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 143
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set18(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 144
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set17(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 145
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set51(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 146
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set50(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 147
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0xb

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set11(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 148
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0xc

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set10(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 149
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0xd

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set48(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 150
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0xe

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set47(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 151
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0xf

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set9(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 152
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set16(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 153
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set54(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 154
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x12

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set12(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 155
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x11

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set49(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 156
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x1b

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set1(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 157
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x14

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set5(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 158
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x13

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set8(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 159
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x16

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set7(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 160
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x15

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set6(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 161
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x4f

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set13(Lcom/lge/android/atservice/KeypadDevice;I)I
    :try_end_2ea
    .catch Landroid/os/RemoteException; {:try_start_133 .. :try_end_2ea} :catch_6b1

    .line 166
    :goto_2ea
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get16(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get32(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_30b

    .line 167
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x52

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 168
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 170
    :cond_30b
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get47(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get37(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_32c

    .line 171
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x54

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 172
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 174
    :cond_32c
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get0(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get20(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_34b

    .line 175
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2, v9}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 176
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 178
    :cond_34b
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get14(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get31(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_36a

    .line 179
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2, v8}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 180
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 182
    :cond_36a
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get46(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get36(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_38b

    .line 183
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0xbb

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 184
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 187
    :cond_38b
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get53(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get43(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_3ac

    .line 188
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x19

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 189
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 191
    :cond_3ac
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get54(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get44(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_3cd

    .line 192
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 193
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 195
    :cond_3cd
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get19(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get35(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_3ee

    .line 196
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 197
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 199
    :cond_3ee
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get18(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get34(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_40f

    .line 200
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 201
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 203
    :cond_40f
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get52(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get42(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_430

    .line 204
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 205
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 207
    :cond_430
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get51(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get41(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_451

    .line 208
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 209
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 211
    :cond_451
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get11(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get28(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_472

    .line 212
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 213
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 215
    :cond_472
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get10(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get27(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_493

    .line 216
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 217
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 219
    :cond_493
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get49(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get39(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_4b4

    .line 220
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 221
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 223
    :cond_4b4
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get48(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get38(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_4d5

    .line 224
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 225
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 227
    :cond_4d5
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get9(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get26(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_4f6

    .line 228
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 229
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 231
    :cond_4f6
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get17(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get33(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_517

    .line 232
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 233
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 235
    :cond_517
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get55(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get45(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_537

    .line 236
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 237
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 239
    :cond_537
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get12(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get29(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_558

    .line 240
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 241
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 243
    :cond_558
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get50(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get40(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_579

    .line 244
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 245
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 247
    :cond_579
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get1(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get21(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_59a

    .line 248
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x1b

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 249
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 251
    :cond_59a
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get5(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get22(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_5b9

    .line 252
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2, v6}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 253
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 255
    :cond_5b9
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get8(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get25(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_5d8

    .line 256
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2, v7}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 257
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 259
    :cond_5d8
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get7(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get24(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_5f9

    .line 260
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 261
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 263
    :cond_5f9
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get6(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get23(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_61a

    .line 264
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x15

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 265
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 267
    :cond_61a
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get13(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get30(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_63b

    .line 268
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    const/16 v3, 0x4f

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set4(Lcom/lge/android/atservice/KeypadDevice;C)C

    .line 269
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 272
    :cond_63b
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get3(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    if-ge v2, v6, :cond_671

    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    if-lez v2, :cond_671

    .line 273
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get15(Lcom/lge/android/atservice/KeypadDevice;)[C

    move-result-object v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get3(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v4}, Lcom/lge/android/atservice/KeypadDevice;->-get4(Lcom/lge/android/atservice/KeypadDevice;)C

    move-result v4

    aput-char v4, v2, v3

    .line 274
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get3(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/android/atservice/KeypadDevice;->-set3(Lcom/lge/android/atservice/KeypadDevice;I)I

    .line 282
    :cond_66a
    :goto_66a
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2, v5}, Lcom/lge/android/atservice/KeypadDevice;->-set2(Lcom/lge/android/atservice/KeypadDevice;I)I

    goto/16 :goto_d

    .line 275
    :cond_671
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get3(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    if-ne v2, v6, :cond_66a

    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get2(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v2

    if-lez v2, :cond_66a

    .line 276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_682
    if-ge v1, v7, :cond_699

    .line 277
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get15(Lcom/lge/android/atservice/KeypadDevice;)[C

    move-result-object v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get15(Lcom/lge/android/atservice/KeypadDevice;)[C

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_682

    .line 279
    :cond_699
    iget-object v2, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v2}, Lcom/lge/android/atservice/KeypadDevice;->-get15(Lcom/lge/android/atservice/KeypadDevice;)[C

    move-result-object v2

    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v3}, Lcom/lge/android/atservice/KeypadDevice;->-get3(Lcom/lge/android/atservice/KeypadDevice;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/lge/android/atservice/KeypadDevice$1;->this$0:Lcom/lge/android/atservice/KeypadDevice;

    invoke-static {v4}, Lcom/lge/android/atservice/KeypadDevice;->-get4(Lcom/lge/android/atservice/KeypadDevice;)C

    move-result v4

    aput-char v4, v2, v3

    goto :goto_66a

    .line 105
    .end local v1    # "i":I
    :cond_6b0
    return-void

    .line 163
    :catch_6b1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto/16 :goto_2ea
.end method
