.class public Lcom/lge/view/inputmethod/ExtractedTextAO;
.super Ljava/lang/Object;
.source "ExtractedText.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/view/inputmethod/ExtractedTextAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    :try_start_0
    invoke-static {}, Lcom/lge/view/inputmethod/ExtractedTextAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/view/inputmethod/ExtractedTextAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_DISABLE_BUBBLE_CUT()I
    .registers 1

    sget v0, Landroid/view/inputmethod/ExtractedText;->FLAG_DISABLE_BUBBLE_CUT:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_DISABLE_BUBBLE_PASTE()I
    .registers 1

    sget v0, Landroid/view/inputmethod/ExtractedText;->FLAG_DISABLE_BUBBLE_PASTE:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_DISABLE_BUBBLE_POPUP()I
    .registers 1

    sget v0, Landroid/view/inputmethod/ExtractedText;->FLAG_DISABLE_BUBBLE_POPUP:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_IS_HANDLE_SHOWING()I
    .registers 1

    sget v0, Landroid/view/inputmethod/ExtractedText;->FLAG_IS_HANDLE_SHOWING:I

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_DISABLE_BUBBLE_CUT()V
    .registers 1

    .prologue
    .line 8
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/lge/view/inputmethod/ExtractedTextAO;->ajc$interFieldSetDispatch$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_DISABLE_BUBBLE_CUT(I)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_DISABLE_BUBBLE_PASTE()V
    .registers 1

    .prologue
    .line 7
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/lge/view/inputmethod/ExtractedTextAO;->ajc$interFieldSetDispatch$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_DISABLE_BUBBLE_PASTE(I)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_DISABLE_BUBBLE_POPUP()V
    .registers 1

    .prologue
    .line 6
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/lge/view/inputmethod/ExtractedTextAO;->ajc$interFieldSetDispatch$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_DISABLE_BUBBLE_POPUP(I)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_IS_HANDLE_SHOWING()V
    .registers 1

    .prologue
    .line 9
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/lge/view/inputmethod/ExtractedTextAO;->ajc$interFieldSetDispatch$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_IS_HANDLE_SHOWING(I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_DISABLE_BUBBLE_CUT(I)V
    .registers 1

    sput p0, Landroid/view/inputmethod/ExtractedText;->FLAG_DISABLE_BUBBLE_CUT:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_DISABLE_BUBBLE_PASTE(I)V
    .registers 1

    sput p0, Landroid/view/inputmethod/ExtractedText;->FLAG_DISABLE_BUBBLE_PASTE:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_DISABLE_BUBBLE_POPUP(I)V
    .registers 1

    sput p0, Landroid/view/inputmethod/ExtractedText;->FLAG_DISABLE_BUBBLE_POPUP:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_view_inputmethod_ExtractedTextAO$android_view_inputmethod_ExtractedText$FLAG_IS_HANDLE_SHOWING(I)V
    .registers 1

    sput p0, Landroid/view/inputmethod/ExtractedText;->FLAG_IS_HANDLE_SHOWING:I

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/view/inputmethod/ExtractedTextAO;

    invoke-direct {v0}, Lcom/lge/view/inputmethod/ExtractedTextAO;-><init>()V

    sput-object v0, Lcom/lge/view/inputmethod/ExtractedTextAO;->ajc$perSingletonInstance:Lcom/lge/view/inputmethod/ExtractedTextAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/view/inputmethod/ExtractedTextAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/view/inputmethod/ExtractedTextAO;->ajc$perSingletonInstance:Lcom/lge/view/inputmethod/ExtractedTextAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_view_inputmethod_ExtractedTextAO"

    sget-object v2, Lcom/lge/view/inputmethod/ExtractedTextAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/view/inputmethod/ExtractedTextAO;->ajc$perSingletonInstance:Lcom/lge/view/inputmethod/ExtractedTextAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/view/inputmethod/ExtractedTextAO;->ajc$perSingletonInstance:Lcom/lge/view/inputmethod/ExtractedTextAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
