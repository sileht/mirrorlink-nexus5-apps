.class public Lcom/lge/app/AlertDialogEx;
.super Landroid/app/AlertDialog;
.source "AlertDialogEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/AlertDialogEx$BuilderEx;,
        Lcom/lge/app/AlertDialogEx$ButtonCompHarf;,
        Lcom/lge/app/AlertDialogEx$ButtonCompLongest;,
        Lcom/lge/app/AlertDialogEx$ButtonInfo;,
        Lcom/lge/app/AlertDialogEx$MethodOverride;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlertDialogEx"

.field private static final defaultFontSize:F = 16.0f


# instance fields
.field private adjusted:Z

.field private bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

.field private bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

.field private bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

.field private buttonMinWidth:I

.field private buttonPanel:Landroid/view/View;

.field private buttonPanelWidth:I

.field private buttonShouldbeLoad:Z

.field private checkLayoutChanged:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private density:F

.field private fieldMTransformed:Ljava/lang/reflect/Field;

.field private fieldThemeResId:Ljava/lang/reflect/Field;

.field private landWidth:I

.field private listButtonInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/app/AlertDialogEx$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private portWidth:I

.field private screenRotation:I

.field private totalStringSpace:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 26
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/app/AlertDialogEx;->density:F

    .line 29
    iput-boolean v1, p0, Lcom/lge/app/AlertDialogEx;->buttonShouldbeLoad:Z

    .line 30
    iput-boolean v1, p0, Lcom/lge/app/AlertDialogEx;->adjusted:Z

    .line 31
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->buttonPanel:Landroid/view/View;

    .line 32
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->buttonPanelWidth:I

    .line 34
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 35
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 36
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 37
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->fieldMTransformed:Ljava/lang/reflect/Field;

    .line 38
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->fieldThemeResId:Ljava/lang/reflect/Field;

    .line 39
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->buttonMinWidth:I

    .line 40
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->portWidth:I

    .line 41
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->landWidth:I

    .line 42
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->screenRotation:I

    .line 64
    new-instance v0, Lcom/lge/app/AlertDialogEx$1;

    invoke-direct {v0, p0}, Lcom/lge/app/AlertDialogEx$1;-><init>(Lcom/lge/app/AlertDialogEx;)V

    iput-object v0, p0, Lcom/lge/app/AlertDialogEx;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 26
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/app/AlertDialogEx;->density:F

    .line 29
    iput-boolean v1, p0, Lcom/lge/app/AlertDialogEx;->buttonShouldbeLoad:Z

    .line 30
    iput-boolean v1, p0, Lcom/lge/app/AlertDialogEx;->adjusted:Z

    .line 31
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->buttonPanel:Landroid/view/View;

    .line 32
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->buttonPanelWidth:I

    .line 34
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 35
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 36
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 37
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->fieldMTransformed:Ljava/lang/reflect/Field;

    .line 38
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->fieldThemeResId:Ljava/lang/reflect/Field;

    .line 39
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->buttonMinWidth:I

    .line 40
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->portWidth:I

    .line 41
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->landWidth:I

    .line 42
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->screenRotation:I

    .line 64
    new-instance v0, Lcom/lge/app/AlertDialogEx$1;

    invoke-direct {v0, p0}, Lcom/lge/app/AlertDialogEx$1;-><init>(Lcom/lge/app/AlertDialogEx;)V

    iput-object v0, p0, Lcom/lge/app/AlertDialogEx;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 26
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/app/AlertDialogEx;->density:F

    .line 29
    iput-boolean v1, p0, Lcom/lge/app/AlertDialogEx;->buttonShouldbeLoad:Z

    .line 30
    iput-boolean v1, p0, Lcom/lge/app/AlertDialogEx;->adjusted:Z

    .line 31
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->buttonPanel:Landroid/view/View;

    .line 32
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->buttonPanelWidth:I

    .line 34
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 35
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 36
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 37
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->fieldMTransformed:Ljava/lang/reflect/Field;

    .line 38
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->fieldThemeResId:Ljava/lang/reflect/Field;

    .line 39
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->buttonMinWidth:I

    .line 40
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->portWidth:I

    .line 41
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->landWidth:I

    .line 42
    iput v1, p0, Lcom/lge/app/AlertDialogEx;->screenRotation:I

    .line 64
    new-instance v0, Lcom/lge/app/AlertDialogEx$1;

    invoke-direct {v0, p0}, Lcom/lge/app/AlertDialogEx$1;-><init>(Lcom/lge/app/AlertDialogEx;)V

    iput-object v0, p0, Lcom/lge/app/AlertDialogEx;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/lge/app/AlertDialogEx;)Landroid/view/View;
    .registers 2
    .param p0, "arg0"    # Lcom/lge/app/AlertDialogEx;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/app/AlertDialogEx;->buttonPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/app/AlertDialogEx;)I
    .registers 2
    .param p0, "arg0"    # Lcom/lge/app/AlertDialogEx;

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/app/AlertDialogEx;->buttonPanelWidth:I

    return v0
.end method

.method static synthetic access$10(Lcom/lge/app/AlertDialogEx;)I
    .registers 2
    .param p0, "arg0"    # Lcom/lge/app/AlertDialogEx;

    .prologue
    .line 39
    iget v0, p0, Lcom/lge/app/AlertDialogEx;->buttonMinWidth:I

    return v0
.end method

.method static synthetic access$2(Lcom/lge/app/AlertDialogEx;)Z
    .registers 2
    .param p0, "arg0"    # Lcom/lge/app/AlertDialogEx;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lge/app/AlertDialogEx;->adjusted:Z

    return v0
.end method

.method static synthetic access$3(Lcom/lge/app/AlertDialogEx;)V
    .registers 1
    .param p0, "arg0"    # Lcom/lge/app/AlertDialogEx;

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/lge/app/AlertDialogEx;->adjust()V

    return-void
.end method

.method static synthetic access$4(Lcom/lge/app/AlertDialogEx;Landroid/os/AsyncTask;)V
    .registers 2
    .param p0, "arg0"    # Lcom/lge/app/AlertDialogEx;
    .param p1, "arg1"    # Landroid/os/AsyncTask;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lge/app/AlertDialogEx;->checkLayoutChanged:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$5(Lcom/lge/app/AlertDialogEx;)Landroid/os/AsyncTask;
    .registers 2
    .param p0, "arg0"    # Lcom/lge/app/AlertDialogEx;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/app/AlertDialogEx;->checkLayoutChanged:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lge/app/AlertDialogEx;)F
    .registers 2
    .param p0, "arg0"    # Lcom/lge/app/AlertDialogEx;

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/app/AlertDialogEx;->density:F

    return v0
.end method

.method static synthetic access$7(Lcom/lge/app/AlertDialogEx;)Ljava/lang/reflect/Field;
    .registers 2
    .param p0, "arg0"    # Lcom/lge/app/AlertDialogEx;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/app/AlertDialogEx;->fieldMTransformed:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$8(Ljava/lang/String;[CI[I)[I
    .registers 5
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # [C
    .param p2, "arg2"    # I
    .param p3, "arg3"    # [I

    .prologue
    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/lge/app/AlertDialogEx;->getLineBreakOpp(Ljava/lang/String;[CI[I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/lge/app/AlertDialogEx;C)Z
    .registers 3
    .param p0, "arg0"    # Lcom/lge/app/AlertDialogEx;
    .param p1, "arg1"    # C

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/lge/app/AlertDialogEx;->isHangul(C)Z

    move-result v0

    return v0
.end method

.method private adjust()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 385
    const/4 v1, 0x0

    .line 386
    .local v1, "totalStringWidth":I
    invoke-direct {p0}, Lcom/lge/app/AlertDialogEx;->validateTheme()Z

    move-result v2

    if-nez v2, :cond_15

    .line 387
    const-string v2, "AlertDialogEx"

    const-string v3, "AlertDialogEx Support only LG Theme"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_14
    return-void

    .line 390
    :cond_15
    iput-boolean v8, p0, Lcom/lge/app/AlertDialogEx;->adjusted:Z

    .line 391
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->buttonPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/lge/app/AlertDialogEx;->buttonPanelWidth:I

    .line 392
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 395
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->isOverFlow:Z
    invoke-static {v2}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$10(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Z

    move-result v2

    if-nez v2, :cond_67

    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->isOverFlow:Z
    invoke-static {v2}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$10(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Z

    move-result v2

    if-nez v2, :cond_67

    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->isOverFlow:Z
    invoke-static {v2}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$10(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 396
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 392
    :cond_5d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 393
    .local v0, "eachInfo":Lcom/lge/app/AlertDialogEx$ButtonInfo;
    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->getStringWidth()V
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$9(Lcom/lge/app/AlertDialogEx$ButtonInfo;)V

    goto :goto_25

    .line 399
    .end local v0    # "eachInfo":Lcom/lge/app/AlertDialogEx$ButtonInfo;
    :cond_67
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6d
    :goto_6d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10a

    .line 414
    invoke-virtual {p0}, Lcom/lge/app/AlertDialogEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v9, :cond_14f

    .line 415
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->landWidth:I

    if-nez v2, :cond_149

    .line 416
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->buttonPanel:Landroid/view/View;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/lge/app/AlertDialogEx;->getTotalStringSpace(Landroid/view/View;Ljava/util/ArrayList;)I

    move-result v2

    iput v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    iput v2, p0, Lcom/lge/app/AlertDialogEx;->landWidth:I

    .line 428
    :goto_93
    const-string v2, "AlertDialogEx"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SPACE :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   WIDTH :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/app/AlertDialogEx$ButtonCompLongest;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lge/app/AlertDialogEx$ButtonCompLongest;-><init>(Lcom/lge/app/AlertDialogEx;Lcom/lge/app/AlertDialogEx$ButtonCompLongest;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 430
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 431
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 432
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 434
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    if-lt v2, v1, :cond_167

    .line 435
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$4(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 437
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$4(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 438
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$4(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    goto/16 :goto_14

    .line 399
    :cond_10a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 402
    .restart local v0    # "eachInfo":Lcom/lge/app/AlertDialogEx$ButtonInfo;
    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->fontSize:F
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$11(Lcom/lge/app/AlertDialogEx$ButtonInfo;)F

    move-result v2

    const/high16 v4, 0x41800000    # 16.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_12d

    .line 403
    const-string v2, "AlertDialogEx"

    const-string v4, "font resized..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$8(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Landroid/widget/Button;

    move-result-object v2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v8, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 405
    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->getStringWidth()V
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$9(Lcom/lge/app/AlertDialogEx$ButtonInfo;)V

    .line 408
    :cond_12d
    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$12(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6d

    .line 409
    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$4(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v2

    iget v4, p0, Lcom/lge/app/AlertDialogEx;->buttonMinWidth:I

    if-lt v2, v4, :cond_146

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$4(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v2

    :goto_143
    add-int/2addr v1, v2

    goto/16 :goto_6d

    :cond_146
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->buttonMinWidth:I

    goto :goto_143

    .line 418
    .end local v0    # "eachInfo":Lcom/lge/app/AlertDialogEx$ButtonInfo;
    :cond_149
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->landWidth:I

    iput v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    goto/16 :goto_93

    .line 422
    :cond_14f
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->portWidth:I

    if-nez v2, :cond_161

    .line 423
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->buttonPanel:Landroid/view/View;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/lge/app/AlertDialogEx;->getTotalStringSpace(Landroid/view/View;Ljava/util/ArrayList;)I

    move-result v2

    iput v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    iput v2, p0, Lcom/lge/app/AlertDialogEx;->portWidth:I

    goto/16 :goto_93

    .line 425
    :cond_161
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->portWidth:I

    iput v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    goto/16 :goto_93

    .line 441
    :cond_167
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$4(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$4(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_1a9

    .line 442
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 444
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$4(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 445
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$4(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    goto/16 :goto_14

    .line 448
    :cond_1a9
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$4(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_1eb

    .line 449
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 451
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 452
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$4(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    goto/16 :goto_14

    .line 455
    :cond_1eb
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_22d

    .line 456
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 458
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 459
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    goto/16 :goto_14

    .line 462
    :cond_22d
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/app/AlertDialogEx$ButtonCompHarf;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lge/app/AlertDialogEx$ButtonCompHarf;-><init>(Lcom/lge/app/AlertDialogEx;Lcom/lge/app/AlertDialogEx$ButtonCompHarf;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 463
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 464
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 465
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iput-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 466
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_298

    .line 467
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE 4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 469
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 470
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    goto/16 :goto_14

    .line 473
    :cond_298
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_2da

    .line 474
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE 5"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 476
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 477
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    goto/16 :goto_14

    .line 480
    :cond_2da
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_31c

    .line 481
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE 6"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 483
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 484
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    goto/16 :goto_14

    .line 487
    :cond_31c
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$12(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3b9

    .line 489
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_364

    .line 490
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE 7"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v7, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 494
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v6}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 495
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v6}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    goto/16 :goto_14

    .line 498
    :cond_364
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_399

    .line 499
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE 8"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v7, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 504
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget v3, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v4}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v6}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 505
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v6}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    goto/16 :goto_14

    .line 508
    :cond_399
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE FIANL 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v7, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 514
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget v3, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    div-int/lit8 v3, v3, 0x3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v6}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 515
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt3:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget v3, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    div-int/lit8 v3, v3, 0x3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v6}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    goto/16 :goto_14

    .line 517
    :cond_3b9
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$12(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_401

    .line 519
    iget v2, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_3ea

    .line 520
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE 9"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v7, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 523
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v6}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    goto/16 :goto_14

    .line 526
    :cond_3ea
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE FIANL 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt1:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v7, v5}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    .line 532
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->bt2:Lcom/lge/app/AlertDialogEx$ButtonInfo;

    iget v3, p0, Lcom/lge/app/AlertDialogEx;->totalStringSpace:I

    div-int/lit8 v3, v3, 0x2

    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V
    invoke-static {v2, v3, v6}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V

    goto/16 :goto_14

    .line 536
    :cond_401
    const-string v2, "AlertDialogEx"

    const-string v3, "CASE FIANL 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14
.end method

.method private static getLineBreakOpp(Ljava/lang/String;[CI[I)[I
    .registers 5
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "text"    # [C
    .param p2, "length"    # I
    .param p3, "recycle"    # [I

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/lge/app/AlertDialogEx;->nLineBreakOpportunities(Ljava/lang/String;[CI[I)[I

    move-result-object v0

    return-object v0
.end method

.method private getTotalStringSpace(Landroid/view/View;Ljava/util/ArrayList;)I
    .registers 8
    .param p1, "panel"    # Landroid/view/View;
    .param p2, "button"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/app/AlertDialogEx$ButtonInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "spaceWidth":I
    if-nez p1, :cond_5

    .line 161
    const/4 v2, 0x0

    .line 169
    :goto_4
    return v2

    .line 163
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 164
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_20

    move v2, v1

    .line 169
    goto :goto_4

    .line 164
    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 165
    .local v0, "eachInfo":Lcom/lge/app/AlertDialogEx$ButtonInfo;
    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$4(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    if-eqz v3, :cond_18

    .line 166
    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->paddingWidth:I
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$5(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->marginWidth:I
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$6(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    goto :goto_18
.end method

.method private isHangul(C)Z
    .registers 4
    .param p1, "ch"    # C

    .prologue
    .line 557
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 558
    .local v0, "block":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_10

    .line 559
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_10

    .line 560
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_12

    .line 561
    :cond_10
    const/4 v1, 0x1

    .line 563
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private loadDialogInfo()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    const-string v5, "AlertDialogEx"

    const-string v6, "loadDialogInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-boolean v3, p0, Lcom/lge/app/AlertDialogEx;->adjusted:Z

    .line 175
    invoke-virtual {p0}, Lcom/lge/app/AlertDialogEx;->isShowing()Z

    move-result v5

    if-nez v5, :cond_13

    .line 205
    :cond_12
    :goto_12
    return v3

    .line 178
    :cond_13
    iget-object v5, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_48

    .line 179
    iget-object v5, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    new-instance v6, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    const/4 v7, -0x2

    invoke-virtual {p0, v7}, Lcom/lge/app/AlertDialogEx;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    invoke-direct {v6, p0, v7, v8}, Lcom/lge/app/AlertDialogEx$ButtonInfo;-><init>(Lcom/lge/app/AlertDialogEx;Landroid/widget/Button;Lcom/lge/app/AlertDialogEx$ButtonInfo;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v5, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    new-instance v6, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    const/4 v7, -0x3

    invoke-virtual {p0, v7}, Lcom/lge/app/AlertDialogEx;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    invoke-direct {v6, p0, v7, v8}, Lcom/lge/app/AlertDialogEx$ButtonInfo;-><init>(Lcom/lge/app/AlertDialogEx;Landroid/widget/Button;Lcom/lge/app/AlertDialogEx$ButtonInfo;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v5, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    new-instance v6, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/lge/app/AlertDialogEx;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    invoke-direct {v6, p0, v7, v8}, Lcom/lge/app/AlertDialogEx$ButtonInfo;-><init>(Lcom/lge/app/AlertDialogEx;Landroid/widget/Button;Lcom/lge/app/AlertDialogEx$ButtonInfo;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_48
    invoke-virtual {p0}, Lcom/lge/app/AlertDialogEx;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, Lcom/lge/app/AlertDialogEx;->density:F

    .line 184
    invoke-virtual {p0}, Lcom/lge/app/AlertDialogEx;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x10202f3

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/app/AlertDialogEx;->buttonPanel:Landroid/view/View;

    .line 186
    :try_start_65
    const-string v5, "android.widget.TextView"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 187
    .local v0, "classTextView":Ljava/lang/Class;
    const-string v5, "mTransformed"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/app/AlertDialogEx;->fieldMTransformed:Ljava/lang/reflect/Field;

    .line 188
    iget-object v5, p0, Lcom/lge/app/AlertDialogEx;->fieldMTransformed:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 189
    const-string v5, "android.content.res.Resources$Theme"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 190
    .local v1, "classTheme":Ljava/lang/Class;
    const-string v5, "mThemeResId"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/app/AlertDialogEx;->fieldThemeResId:Ljava/lang/reflect/Field;

    .line 191
    iget-object v5, p0, Lcom/lge/app/AlertDialogEx;->fieldThemeResId:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_8d} :catch_a0

    .line 196
    iget-object v5, p0, Lcom/lge/app/AlertDialogEx;->buttonPanel:Landroid/view/View;

    if-eqz v5, :cond_12

    .line 199
    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_97
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_aa

    :goto_9d
    move v3, v4

    .line 205
    goto/16 :goto_12

    .line 193
    .end local v0    # "classTextView":Ljava/lang/Class;
    .end local v1    # "classTheme":Ljava/lang/Class;
    :catch_a0
    move-exception v4

    const-string v4, "AlertDialogEx"

    const-string v5, "reflection fail.. It will not work"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 199
    .restart local v0    # "classTextView":Ljava/lang/Class;
    .restart local v1    # "classTheme":Ljava/lang/Class;
    :cond_aa
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 200
    .local v2, "eachInfo":Lcom/lge/app/AlertDialogEx$ButtonInfo;
    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;
    invoke-static {v2}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$8(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Button;->getMinWidth()I

    move-result v5

    if-eqz v5, :cond_97

    .line 201
    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;
    invoke-static {v2}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$8(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getMinWidth()I

    move-result v3

    iput v3, p0, Lcom/lge/app/AlertDialogEx;->buttonMinWidth:I

    goto :goto_9d
.end method

.method private static native nLineBreakOpportunities(Ljava/lang/String;[CI[I)[I
.end method

.method private validateTheme()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 544
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/app/AlertDialogEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 545
    .local v0, "dialogTheme":Landroid/content/res/Resources$Theme;
    iget-object v3, p0, Lcom/lge/app/AlertDialogEx;->fieldThemeResId:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 546
    .local v1, "dialogThemeId":I
    sget v3, Lcom/lge/R$style;->Theme_LGE_Default_Dialog_Alert:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_15

    if-ne v1, v3, :cond_14

    .line 547
    const/4 v2, 0x1

    .line 553
    .end local v0    # "dialogTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "dialogThemeId":I
    :cond_14
    :goto_14
    return v2

    .line 550
    :catch_15
    move-exception v3

    const-string v3, "AlertDialogEx"

    const-string v4, "fail to get theme id."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 3

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/app/AlertDialogEx;->buttonShouldbeLoad:Z

    .line 129
    const-string v0, "AlertDialogEx"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/lge/app/AlertDialogEx;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/AlertDialogEx;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    const-string v1, "AlertDialogEx"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 121
    invoke-virtual {p0}, Lcom/lge/app/AlertDialogEx;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/app/AlertDialogEx;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    const-string v0, "AlertDialogEx"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasFocus"    # Z

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    .line 138
    const-string v1, "AlertDialogEx"

    const-string v2, "onWindowFocusChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/lge/app/AlertDialogEx;->checkLayoutChanged:Landroid/os/AsyncTask;

    if-eqz v1, :cond_14

    .line 140
    iget-object v1, p0, Lcom/lge/app/AlertDialogEx;->checkLayoutChanged:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 142
    :cond_14
    iget-boolean v1, p0, Lcom/lge/app/AlertDialogEx;->buttonShouldbeLoad:Z

    if-nez v1, :cond_19

    .line 156
    :cond_18
    :goto_18
    return-void

    .line 145
    :cond_19
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/app/AlertDialogEx;->buttonShouldbeLoad:Z

    .line 146
    invoke-direct {p0}, Lcom/lge/app/AlertDialogEx;->loadDialogInfo()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 150
    iget-object v1, p0, Lcom/lge/app/AlertDialogEx;->listButtonInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_32

    .line 155
    invoke-direct {p0}, Lcom/lge/app/AlertDialogEx;->adjust()V

    goto :goto_18

    .line 150
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .line 151
    .local v0, "eachInfo":Lcom/lge/app/AlertDialogEx$ButtonInfo;
    # invokes: Lcom/lge/app/AlertDialogEx$ButtonInfo;->loadButtonInfo()Z
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$3(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_18
.end method
