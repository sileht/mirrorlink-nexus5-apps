.class public Landroid/widget/CliptrayUtils;
.super Ljava/lang/Object;
.source "CliptrayUtils.java"


# static fields
.field private static final CLIPTRAY_HIDE:Ljava/lang/String; = "com.lge.systemservice.core.cliptray.HIDE_CLIPTRAY"

.field private static final CLIPTRAY_INPUTTYPE:Ljava/lang/String; = "com.lge.systemservice.core.cliptray.INPUTTYPE_CLIPTRAY"

.field private static final CLIPTRAY_PASTE:Ljava/lang/String; = "com.lge.systemservice.core.cliptray.PASTE_CLIPTRAY"

.field private static final CLIPTRAY_SHOW:Ljava/lang/String; = "com.lge.systemservice.core.cliptray.SHOW_CLIPTRAY"

.field private static final INIT_CLIPTRAY:I = 0xa

.field private static final INPUT_TYPE_TEXT_IMAGE:I = 0x2

.field private static final INPUT_TYPE_TEXT_ONLY:I = 0x0

.field private static POPUP_TEXT_LAYOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CliptrayUtils"

.field private static sCliptrayAvailable:Z


# instance fields
.field private mCliptrayTextView:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const v0, 0x10900e8

    sput v0, Landroid/widget/CliptrayUtils;->POPUP_TEXT_LAYOUT:I

    .line 36
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    sput-boolean v0, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    .line 40
    return-void
.end method

.method public static getFeatureAvailable()Z
    .registers 3

    .prologue
    .line 49
    const-string v0, "CliptrayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFeatureAvailable() : sCliptrayAvailable = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-boolean v0, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    return v0
.end method

.method public static setFeatureAvailable(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v0, "CliptrayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sCliptrayAvailable is set to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method private setInputTypeforClipTray(Landroid/widget/Editor$InputContentType;Z)V
    .registers 9
    .param p1, "mInputContentType"    # Landroid/widget/Editor$InputContentType;
    .param p2, "init"    # Z

    .prologue
    .line 94
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.systemservice.core.cliptray.INPUTTYPE_CLIPTRAY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_1a

    .line 96
    const-string v3, "Inputtype"

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    :goto_10
    iget-object v3, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    return-void

    .line 98
    :cond_1a
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/widget/CliptrayUtils;->setInputTypeforClipTray(Landroid/widget/Editor$InputContentType;Z)V

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "inputTypeforClipTray":I
    if-eqz p1, :cond_3b

    .line 101
    iget-object v2, p1, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 102
    .local v2, "options":Ljava/lang/String;
    if-eqz v2, :cond_36

    const-string v3, "com.lge.cliptray.image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 103
    const/4 v0, 0x2

    .line 104
    const-string v3, "CliptrayUtils"

    const-string v4, "inputTypeforClipTray = INPUT_TYPE_TEXT_IMAGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_36
    const-string v3, "Inputtype"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    .end local v2    # "options":Ljava/lang/String;
    :cond_3b
    const-string v3, "CliptrayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setInputTypeforClipTray(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private showClipTray()V
    .registers 3

    .prologue
    .line 81
    sget-boolean v1, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v1, :cond_14

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.systemservice.core.cliptray.SHOW_CLIPTRAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_14
    return-void
.end method


# virtual methods
.method hideClipTray()V
    .registers 3

    .prologue
    .line 74
    sget-boolean v1, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v1, :cond_14

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.systemservice.core.cliptray.HIDE_CLIPTRAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_14
    return-void
.end method

.method hideClipTrayIfNeeded()V
    .registers 3

    .prologue
    .line 65
    sget-boolean v0, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v0, :cond_16

    .line 66
    iget-object v0, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 67
    const-string v0, "CliptrayUtils"

    const-string v1, "hideClipTrayIfNeeded() TextView is focused!! hideClipTray()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Landroid/widget/CliptrayUtils;->hideClipTray()V

    .line 71
    :cond_16
    return-void
.end method

.method initCliptrayPopupWindow(Landroid/view/LayoutInflater;Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "wrapContent"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "mContentView"    # Landroid/view/ViewGroup;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 127
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v0, :cond_8

    .line 129
    sget v0, Lcom/lge/internal/R$layout;->bubble_item:I

    sput v0, Landroid/widget/CliptrayUtils;->POPUP_TEXT_LAYOUT:I

    .line 131
    :cond_8
    sget-boolean v0, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/widget/CliptrayUtils;->isOwnerforClipTray()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 132
    sget v0, Landroid/widget/CliptrayUtils;->POPUP_TEXT_LAYOUT:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v0, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    sget v1, Lcom/lge/internal/R$string;->cliptray:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v0, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_33
    return-void
.end method

.method isOwnerforClipTray()Z
    .registers 5

    .prologue
    .line 114
    const/4 v0, 0x1

    .line 115
    .local v0, "mIsOwner":Z
    const-string v1, "kids"

    const-string v2, "service.plushome.currenthome"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 116
    const/4 v0, 0x0

    .line 118
    :cond_10
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_17

    .line 119
    const/4 v0, 0x0

    .line 121
    :cond_17
    const-string v1, "CliptrayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isOwnerforClipTray():mIsOwner :  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v0
.end method

.method notifyPaste()V
    .registers 3

    .prologue
    .line 58
    sget-boolean v1, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v1, :cond_14

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.systemservice.core.cliptray.PASTE_CLIPTRAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_14
    return-void
.end method

.method setInputTypeIfNeeded(Landroid/widget/Editor$InputContentType;Z)V
    .registers 4
    .param p1, "mInputContentType"    # Landroid/widget/Editor$InputContentType;
    .param p2, "init"    # Z

    .prologue
    .line 88
    sget-boolean v0, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v0, :cond_7

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/CliptrayUtils;->setInputTypeforClipTray(Landroid/widget/Editor$InputContentType;Z)V

    .line 91
    :cond_7
    return-void
.end method

.method setTextView(Landroid/widget/TextView;)V
    .registers 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 54
    iput-object p1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    .line 55
    return-void
.end method

.method showCliptrayPopupWindow(ZZZ)V
    .registers 9
    .param p1, "canPaste"    # Z
    .param p2, "isPassword"    # Z
    .param p3, "isLockScreen"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 141
    sget-boolean v4, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v4, :cond_2f

    .line 143
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 144
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/lge/cappuccino/IMdm;->checkDisabledClipboard(Z)Z

    move-result v4

    if-eqz v4, :cond_30

    move v1, v2

    .line 145
    .local v1, "isMDMEnable":Z
    :goto_17
    if-nez v1, :cond_32

    if-eqz p1, :cond_32

    if-nez p2, :cond_32

    if-nez p3, :cond_32

    move v0, v2

    .line 150
    .local v0, "canClipTray":Z
    :goto_20
    iget-object v4, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_2b

    .line 151
    iget-object v4, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_34

    :goto_28
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :cond_2b
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Landroid/widget/CliptrayUtils;->setInputTypeforClipTray(Landroid/widget/Editor$InputContentType;Z)V

    .line 155
    .end local v0    # "canClipTray":Z
    .end local v1    # "isMDMEnable":Z
    :cond_2f
    return-void

    :cond_30
    move v1, v3

    .line 143
    goto :goto_17

    .restart local v1    # "isMDMEnable":Z
    :cond_32
    move v0, v3

    .line 145
    goto :goto_20

    .line 151
    .restart local v0    # "canClipTray":Z
    :cond_34
    const/16 v3, 0x8

    goto :goto_28
.end method

.method showCliptrayfromPopupWindow(Landroid/view/View;Z)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mShowSoftInputOnFocus"    # Z

    .prologue
    .line 158
    sget-boolean v1, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v1, :cond_2a

    .line 159
    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    if-ne v1, p1, :cond_2a

    .line 160
    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_27

    if-eqz p2, :cond_27

    .line 161
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 162
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_27

    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 163
    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 166
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_27
    invoke-direct {p0}, Landroid/widget/CliptrayUtils;->showClipTray()V

    .line 169
    :cond_2a
    return-void
.end method
