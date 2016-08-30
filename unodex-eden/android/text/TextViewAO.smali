.class public Landroid/text/TextViewAO;
.super Ljava/lang/Object;
.source "TextViewAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextViewAO"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/text/TextViewAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    :try_start_0
    invoke-static {}, Landroid/text/TextViewAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 11
    :goto_3
    return-void

    .line 9
    :catch_4
    move-exception v0

    sput-object v0, Landroid/text/TextViewAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_text_TextViewAO$2$413e438cproceed(Landroid/widget/TextView;Landroid/content/Context;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "this"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_text_TextViewAO$android_widget_TextView$mNoEmojiEditMode(Landroid/widget/TextView;)Z
    .registers 2

    invoke-static {p0}, Landroid/widget/TextView;->ajc$get$mNoEmojiEditMode(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interFieldInit$android_text_TextViewAO$android_widget_TextView$mNoEmojiEditMode(Landroid/widget/TextView;)V
    .registers 2
    .param p0, "ajc$this_"    # Landroid/widget/TextView;

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/TextViewAO;->ajc$interFieldSetDispatch$android_text_TextViewAO$android_widget_TextView$mNoEmojiEditMode(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_text_TextViewAO$android_widget_TextView$mNoEmojiEditMode(Landroid/widget/TextView;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/TextView;->ajc$set$mNoEmojiEditMode(Landroid/widget/TextView;Z)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/text/TextViewAO;

    invoke-direct {v0}, Landroid/text/TextViewAO;-><init>()V

    sput-object v0, Landroid/text/TextViewAO;->ajc$perSingletonInstance:Landroid/text/TextViewAO;

    return-void
.end method

.method public static aspectOf()Landroid/text/TextViewAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/text/TextViewAO;->ajc$perSingletonInstance:Landroid/text/TextViewAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_text_TextViewAO"

    sget-object v2, Landroid/text/TextViewAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/text/TextViewAO;->ajc$perSingletonInstance:Landroid/text/TextViewAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/text/TextViewAO;->ajc$perSingletonInstance:Landroid/text/TextViewAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$android_text_TextViewAO$1$7d8ce13e(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4
    .param p1, "obj"    # Landroid/widget/TextView;
    .param p2, "type"    # Ljava/lang/String;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,type"
        value = "(this(obj) && (args(type) && execution(public void setPrivateImeOptions(String))))"
    .end annotation

    .prologue
    .line 20
    invoke-static {p2}, Landroid/text/LGEmojiUtil;->hasNoEmojiEditModeOption(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Landroid/text/TextViewAO;->ajc$interFieldSetDispatch$android_text_TextViewAO$android_widget_TextView$mNoEmojiEditMode(Landroid/widget/TextView;Z)V

    .line 21
    return-void
.end method

.method public ajc$around$android_text_TextViewAO$2$413e438c(Landroid/widget/TextView;Landroid/content/Context;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "obj"    # Landroid/widget/TextView;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ctx,ajc$aroundClosure"
        value = "(this(obj) && (args(ctx) && (within(TextView) && (call(public CharSequence ClipData.Item.coerceToStyledText(Context)) || call(public CharSequence ClipData.Item.coerceToText(Context))))))"
    .end annotation

    .prologue
    .line 29
    invoke-static {p1, p2, p3}, Landroid/text/TextViewAO;->ajc$around$android_text_TextViewAO$2$413e438cproceed(Landroid/widget/TextView;Landroid/content/Context;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 31
    .local v0, "paste_intermediate":Ljava/lang/CharSequence;
    if-eqz v0, :cond_f

    .line 32
    invoke-static {p1}, Landroid/text/TextViewAO;->ajc$interFieldGetDispatch$android_text_TextViewAO$android_widget_TextView$mNoEmojiEditMode(Landroid/widget/TextView;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/text/LGEmojiUtil;->filterEmojiIfNeeded(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 34
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method
