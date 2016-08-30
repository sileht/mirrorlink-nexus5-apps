.class public Lcom/lge/inputmethodservice/InputMethodServiceAO;
.super Ljava/lang/Object;
.source "InputMethodServiceAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "InputMethodServiceAO"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/inputmethodservice/InputMethodServiceAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    :try_start_0
    invoke-static {}, Lcom/lge/inputmethodservice/InputMethodServiceAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 22
    :goto_3
    return-void

    .line 21
    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/inputmethodservice/InputMethodServiceAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_inputmethodservice_InputMethodServiceAO$android_inputmethodservice_InputMethodService$InputMethodImpl$mIms(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;)Landroid/inputmethodservice/InputMethodService;
    .registers 2

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->ajc$get$mIms(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_inputmethodservice_InputMethodServiceAO$android_inputmethodservice_InputMethodService$InputMethodImpl$mIms(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;)V
    .registers 1

    .prologue
    .line 23
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_inputmethodservice_InputMethodServiceAO$android_inputmethodservice_InputMethodService$InputMethodImpl$mIms(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/inputmethodservice/InputMethodService;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->ajc$set$mIms(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/inputmethodservice/InputMethodService;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/inputmethodservice/InputMethodServiceAO;

    invoke-direct {v0}, Lcom/lge/inputmethodservice/InputMethodServiceAO;-><init>()V

    sput-object v0, Lcom/lge/inputmethodservice/InputMethodServiceAO;->ajc$perSingletonInstance:Lcom/lge/inputmethodservice/InputMethodServiceAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/inputmethodservice/InputMethodServiceAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/inputmethodservice/InputMethodServiceAO;->ajc$perSingletonInstance:Lcom/lge/inputmethodservice/InputMethodServiceAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_inputmethodservice_InputMethodServiceAO"

    sget-object v2, Lcom/lge/inputmethodservice/InputMethodServiceAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/inputmethodservice/InputMethodServiceAO;->ajc$perSingletonInstance:Lcom/lge/inputmethodservice/InputMethodServiceAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/inputmethodservice/InputMethodServiceAO;->ajc$perSingletonInstance:Lcom/lge/inputmethodservice/InputMethodServiceAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_inputmethodservice_InputMethodServiceAO$2$5d575276(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;)V
    .registers 5
    .param p1, "imi"    # Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "imi"
        value = "showSoftInputPC(imi)"
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Lcom/lge/inputmethodservice/InputMethodServiceAO;->ajc$interFieldGetDispatch$com_lge_inputmethodservice_InputMethodServiceAO$android_inputmethodservice_InputMethodService$InputMethodImpl$mIms(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 45
    invoke-static {p1}, Lcom/lge/inputmethodservice/InputMethodServiceAO;->ajc$interFieldGetDispatch$com_lge_inputmethodservice_InputMethodServiceAO$android_inputmethodservice_InputMethodService$InputMethodImpl$mIms(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.softkeypad.intent.SHOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/InputMethodService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 47
    :cond_16
    return-void
.end method

.method public ajc$afterReturning$com_lge_inputmethodservice_InputMethodServiceAO$3$4c583dd3(Landroid/inputmethodservice/InputMethodService;II)V
    .registers 7
    .param p1, "ims"    # Landroid/inputmethodservice/InputMethodService;
    .param p2, "newSelStart"    # I
    .param p3, "newSelEnd"    # I
    .annotation runtime Lorg/aspectj/lang/annotation/AfterReturning;
        argNames = "ims,newSelStart,newSelEnd"
        pointcut = "updateSelectionPC(ims, newSelStart, newSelEnd)"
        returning = ""
    .end annotation

    .prologue
    .line 57
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v1, :cond_a

    .line 58
    if-ne p2, p3, :cond_b

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/widget/BubblePopupHelper;->setShowingAnyBubblePopup(Z)V

    .line 65
    :cond_a
    :goto_a
    return-void

    .line 59
    :cond_b
    invoke-static {}, Landroid/widget/BubblePopupHelper;->isShowingAnyBubblePopup()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 60
    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 61
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_a

    .line 62
    const-string v1, "ACTION_SHOWING_BUBBLE_POPUP"

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_a
.end method

.method public ajc$before$com_lge_inputmethodservice_InputMethodServiceAO$1$7b811da8(Landroid/inputmethodservice/AbstractInputMethodService;Landroid/view/inputmethod/InputMethod;)V
    .registers 4
    .param p1, "aims"    # Landroid/inputmethodservice/AbstractInputMethodService;
    .param p2, "im"    # Landroid/view/inputmethod/InputMethod;
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "aims,im"
        value = "inputMethodServiceInitPC(aims, im)"
    .end annotation

    .prologue
    .line 31
    move-object v0, p2

    check-cast v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    .line 32
    .local v0, "imi":Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
    check-cast p1, Landroid/inputmethodservice/InputMethodService;

    .end local p1    # "aims":Landroid/inputmethodservice/AbstractInputMethodService;
    invoke-static {v0, p1}, Lcom/lge/inputmethodservice/InputMethodServiceAO;->ajc$interFieldSetDispatch$com_lge_inputmethodservice_InputMethodServiceAO$android_inputmethodservice_InputMethodService$InputMethodImpl$mIms(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/inputmethodservice/InputMethodService;)V

    .line 33
    return-void
.end method

.method public ajc$before$com_lge_inputmethodservice_InputMethodServiceAO$4$29fd02f2(Landroid/inputmethodservice/InputMethodService;)V
    .registers 4
    .param p1, "ims"    # Landroid/inputmethodservice/InputMethodService;
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "ims"
        value = "doHideWindowPC(ims)"
    .end annotation

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.softkeypad.intent.HIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/inputmethodservice/InputMethodService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 77
    return-void
.end method

.method synthetic ajc$pointcut$$doHideWindowPC$cc6(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "ims"
        value = "(this(ims) && (withincode(private void doHideWindow()) && call(public void android.inputmethodservice.InputMethodService.hideWindow())))"
    .end annotation

    .prologue
    .line 71
    return-void
.end method

.method synthetic ajc$pointcut$$inputMethodServiceInitPC$38d(Landroid/inputmethodservice/AbstractInputMethodService;Landroid/view/inputmethod/InputMethod;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "aims,im"
        value = "(call(android.inputmethodservice.IInputMethodWrapper.new(android.inputmethodservice.AbstractInputMethodService, android.view.inputmethod.InputMethod)) && args(aims, im))"
    .end annotation

    .prologue
    .line 28
    return-void
.end method

.method synthetic ajc$pointcut$$showSoftInputPC$5a1(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "imi"
        value = "(this(imi) && (withincode(public void android.inputmethodservice.InputMethodService$InputMethodImpl.showSoftInput(int, android.os.ResultReceiver)) && call(public void android.view.inputmethod.InputMethodManager.setImeWindowStatus(android.os.IBinder, int, int))))"
    .end annotation

    .prologue
    .line 39
    return-void
.end method

.method synthetic ajc$pointcut$$startExtractingTextPC$f00(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/ExtractEditText;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "ims,eet"
        value = "(this(ims) && (target(eet) && (withincode(void android.inputmethodservice.InputMethodService.startExtractingText(boolean)) && call(public void android.inputmethodservice.ExtractEditText.setExtractedText(android.view.inputmethod.ExtractedText)))))"
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method synthetic ajc$pointcut$$updateSelectionPC$8a1(Landroid/inputmethodservice/InputMethodService;II)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "ims,newSelStart,newSelEnd"
        value = "(this(ims) && (args(int, int, newSelStart, newSelEnd, int, int) && execution(public void android.inputmethodservice.InputMethodService.onUpdateSelection(int, int, int, int, int, int))))"
    .end annotation

    .prologue
    .line 53
    return-void
.end method
