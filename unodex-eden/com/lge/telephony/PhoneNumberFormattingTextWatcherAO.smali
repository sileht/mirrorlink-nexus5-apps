.class public Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcherAO.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneNumberFormatTWAO"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    :try_start_0
    const-string v0, "persist.callfrw.dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->DBG:Z

    invoke-static {}, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->ajc$postClinit()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    sput-object v0, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$2$ec73b038proceed(Landroid/telephony/PhoneNumberFormattingTextWatcher;Ljava/lang/CharSequence;IIILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 9
    .param p0, "this"    # Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$3$34085d65proceed(Landroid/telephony/PhoneNumberFormattingTextWatcher;Ljava/lang/CharSequence;IIILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 9
    .param p0, "this"    # Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$4$2f2a1182proceed(Landroid/telephony/PhoneNumberFormattingTextWatcher;Landroid/text/Editable;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p0, "this"    # Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$5$678d45d5proceed(Landroid/text/Editable;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Landroid/text/Editable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$LOG_TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$LOG_TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$android_telephony_PhoneNumberFormattingTextWatcher$mLgeWatcher(Landroid/telephony/PhoneNumberFormattingTextWatcher;)Landroid/text/TextWatcher;
    .registers 2

    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLgeWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$android_telephony_PhoneNumberFormattingTextWatcher$mUsingLgeWatcher(Landroid/telephony/PhoneNumberFormattingTextWatcher;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mUsingLgeWatcher:Z

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$android_telephony_PhoneNumberFormattingTextWatcher$mLgeWatcher(Landroid/telephony/PhoneNumberFormattingTextWatcher;)V
    .registers 2
    .param p0, "ajc$this_"    # Landroid/telephony/PhoneNumberFormattingTextWatcher;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->ajc$interFieldSetDispatch$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$android_telephony_PhoneNumberFormattingTextWatcher$mLgeWatcher(Landroid/telephony/PhoneNumberFormattingTextWatcher;Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$android_telephony_PhoneNumberFormattingTextWatcher$mUsingLgeWatcher(Landroid/telephony/PhoneNumberFormattingTextWatcher;)V
    .registers 1

    .prologue
    .line 17
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$android_telephony_PhoneNumberFormattingTextWatcher$mLgeWatcher(Landroid/telephony/PhoneNumberFormattingTextWatcher;Landroid/text/TextWatcher;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLgeWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$android_telephony_PhoneNumberFormattingTextWatcher$mUsingLgeWatcher(Landroid/telephony/PhoneNumberFormattingTextWatcher;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mUsingLgeWatcher:Z

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;

    invoke-direct {v0}, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;-><init>()V

    sput-object v0, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->ajc$perSingletonInstance:Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->ajc$perSingletonInstance:Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_telephony_PhoneNumberFormattingTextWatcherAO"

    sget-object v2, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->ajc$perSingletonInstance:Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->ajc$perSingletonInstance:Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private haveSpecialNumberformat(Ljava/lang/String;)Z
    .registers 4
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    const-string v1, "LGE_NumberFormat"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 65
    const-string v0, "KR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    .line 66
    const/4 v0, 0x1

    .line 69
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private makeTextWatcherForSpecialNumberformat(Ljava/lang/String;)Landroid/text/TextWatcher;
    .registers 5
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "PhoneNumberFormatTWAO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "makeTextWatcherForSpecialNumberformat countryCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0, p1}, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->haveSpecialNumberformat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 75
    new-instance v0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;

    invoke-direct {v0}, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;-><init>()V

    .line 77
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public ajc$after$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$1$66035290(Landroid/telephony/PhoneNumberFormattingTextWatcher;Ljava/lang/String;)V
    .registers 7
    .param p1, "obj"    # Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .param p2, "countryCode"    # Ljava/lang/String;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,countryCode"
        value = "(this(obj) && (execution(public PhoneNumberFormattingTextWatcher.new(String)) && args(countryCode)))"
    .end annotation

    .prologue
    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mUsingLgeWatcher:Z

    .line 24
    invoke-direct {p0, p2}, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->makeTextWatcherForSpecialNumberformat(Ljava/lang/String;)Landroid/text/TextWatcher;

    move-result-object v0

    .line 26
    .local v0, "watcher":Landroid/text/TextWatcher;
    if-eqz v0, :cond_e

    .line 27
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mUsingLgeWatcher:Z

    .line 28
    iput-object v0, p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLgeWatcher:Landroid/text/TextWatcher;

    .line 30
    :cond_e
    const-string v1, "PhoneNumberFormatTWAO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mUsingLgeWatcher="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mUsingLgeWatcher:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public ajc$around$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$2$ec73b038(Landroid/telephony/PhoneNumberFormattingTextWatcher;Ljava/lang/CharSequence;IIILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 8
    .param p1, "obj"    # Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "after"    # I
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,s,start,count,after,ajc$aroundClosure"
        value = "(this(obj) && (execution(public void PhoneNumberFormattingTextWatcher.beforeTextChanged(CharSequence, int, int, int)) && args(s, start, count, after)))"
    .end annotation

    .prologue
    .line 36
    iget-boolean v0, p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mUsingLgeWatcher:Z

    if-eqz v0, :cond_a

    .line 37
    iget-object v0, p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLgeWatcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p2, p3, p4, p5}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 41
    :goto_9
    return-void

    .line 40
    :cond_a
    invoke-static/range {p1 .. p6}, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->ajc$around$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$2$ec73b038proceed(Landroid/telephony/PhoneNumberFormattingTextWatcher;Ljava/lang/CharSequence;IIILorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_9
.end method

.method public ajc$around$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$3$34085d65(Landroid/telephony/PhoneNumberFormattingTextWatcher;Ljava/lang/CharSequence;IIILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 8
    .param p1, "obj"    # Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "before"    # I
    .param p5, "count"    # I
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,s,start,before,count,ajc$aroundClosure"
        value = "(this(obj) && (execution(public void PhoneNumberFormattingTextWatcher.onTextChanged(CharSequence, int, int, int)) && args(s, start, before, count)))"
    .end annotation

    .prologue
    .line 46
    iget-boolean v0, p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mUsingLgeWatcher:Z

    if-eqz v0, :cond_a

    .line 47
    iget-object v0, p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLgeWatcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p2, p3, p4, p5}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 51
    :goto_9
    return-void

    .line 50
    :cond_a
    invoke-static/range {p1 .. p6}, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->ajc$around$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$3$34085d65proceed(Landroid/telephony/PhoneNumberFormattingTextWatcher;Ljava/lang/CharSequence;IIILorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_9
.end method

.method public ajc$around$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$4$2f2a1182(Landroid/telephony/PhoneNumberFormattingTextWatcher;Landroid/text/Editable;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p1, "obj"    # Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .param p2, "s"    # Landroid/text/Editable;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,s,ajc$aroundClosure"
        value = "(this(obj) && (execution(public void PhoneNumberFormattingTextWatcher.afterTextChanged(Editable)) && args(s)))"
    .end annotation

    .prologue
    .line 56
    iget-boolean v0, p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mUsingLgeWatcher:Z

    if-eqz v0, :cond_a

    .line 57
    iget-object v0, p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLgeWatcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p2}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 61
    :goto_9
    return-void

    .line 60
    :cond_a
    invoke-static {p1, p2, p3}, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->ajc$around$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$4$2f2a1182proceed(Landroid/telephony/PhoneNumberFormattingTextWatcher;Landroid/text/Editable;Lorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_9
.end method

.method public ajc$around$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$5$678d45d5(Landroid/text/Editable;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p1, "s"    # Landroid/text/Editable;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "s,ajc$aroundClosure"
        value = "(execution(void PhoneNumberFormattingTextWatcher.removeSlashesIfNoSlashNumberFormat(Editable)) && args(s))"
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lcom/lge/telephony/PhoneNumberFormattingTextWatcherAO;->ajc$inlineAccessFieldGet$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$com_lge_telephony_PhoneNumberFormattingTextWatcherAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "PhoneNumberFormatTWAO"

    const-string v1, "removeSlashesIfNoSlashNumberFormat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_d
    invoke-static {p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->removeSlashesIfNoSlashNumberFormat(Landroid/text/Editable;)V

    .line 91
    return-void
.end method
