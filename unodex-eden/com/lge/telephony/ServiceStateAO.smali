.class public Lcom/lge/telephony/ServiceStateAO;
.super Ljava/lang/Object;
.source "ServiceStateAO.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ServiceStateAO"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/telephony/ServiceStateAO;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11
    :try_start_0
    const-string v0, "persist.callfrw.dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/telephony/ServiceStateAO;->DBG:Z

    invoke-static {}, Lcom/lge/telephony/ServiceStateAO;->ajc$postClinit()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    sput-object v0, Lcom/lge/telephony/ServiceStateAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_telephony_ServiceStateAO$1$e212ceb8proceed(Landroid/telephony/ServiceState;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 4
    .param p0, "this"    # Landroid/telephony/ServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_telephony_ServiceStateAO$5$4830c31proceed(Landroid/telephony/ServiceState;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Landroid/telephony/ServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_ServiceStateAO$6$dbb8946bproceed(Landroid/telephony/ServiceState;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p0, "this"    # Landroid/telephony/ServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_telephony_ServiceStateAO$7$2ae00c0eproceed(Landroid/telephony/ServiceState;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p0, "this"    # Landroid/telephony/ServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_telephony_ServiceStateAO$com_lge_telephony_ServiceStateAO$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/lge/telephony/ServiceStateAO;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_telephony_ServiceStateAO$com_lge_telephony_ServiceStateAO$LOG_TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/ServiceStateAO;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_telephony_ServiceStateAO$com_lge_telephony_ServiceStateAO$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/lge/telephony/ServiceStateAO;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_telephony_ServiceStateAO$com_lge_telephony_ServiceStateAO$LOG_TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/telephony/ServiceStateAO;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_telephony_ServiceStateAO$android_telephony_ServiceState$mLGServiceStateImpl(Landroid/telephony/ServiceState;)Lcom/lge/telephony/LGServiceStateImpl;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_telephony_ServiceStateAO$android_telephony_ServiceState$mLGServiceStateImpl(Landroid/telephony/ServiceState;)V
    .registers 2
    .param p0, "ajc$this_"    # Landroid/telephony/ServiceState;

    .prologue
    .line 12
    new-instance v0, Lcom/lge/telephony/LGServiceStateImpl;

    invoke-direct {v0}, Lcom/lge/telephony/LGServiceStateImpl;-><init>()V

    invoke-static {p0, v0}, Lcom/lge/telephony/ServiceStateAO;->ajc$interFieldSetDispatch$com_lge_telephony_ServiceStateAO$android_telephony_ServiceState$mLGServiceStateImpl(Landroid/telephony/ServiceState;Lcom/lge/telephony/LGServiceStateImpl;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_telephony_ServiceStateAO$android_telephony_ServiceState$mLGServiceStateImpl(Landroid/telephony/ServiceState;Lcom/lge/telephony/LGServiceStateImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/telephony/ServiceStateAO;

    invoke-direct {v0}, Lcom/lge/telephony/ServiceStateAO;-><init>()V

    sput-object v0, Lcom/lge/telephony/ServiceStateAO;->ajc$perSingletonInstance:Lcom/lge/telephony/ServiceStateAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/telephony/ServiceStateAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/ServiceStateAO;->ajc$perSingletonInstance:Lcom/lge/telephony/ServiceStateAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_telephony_ServiceStateAO"

    sget-object v2, Lcom/lge/telephony/ServiceStateAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/telephony/ServiceStateAO;->ajc$perSingletonInstance:Lcom/lge/telephony/ServiceStateAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/telephony/ServiceStateAO;->ajc$perSingletonInstance:Lcom/lge/telephony/ServiceStateAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_telephony_ServiceStateAO$10$44549357(Landroid/telephony/ServiceState;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "obj"    # Landroid/telephony/ServiceState;
    .param p2, "m"    # Landroid/os/Bundle;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,m"
        value = "(execution(void ServiceState.fillInNotifierBundle(Bundle)) && (this(obj) && args(m)))"
    .end annotation

    .prologue
    .line 140
    sget-boolean v0, Lcom/lge/telephony/ServiceStateAO;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "ServiceStateAO"

    const-string v1, "fillInNotifierBundle()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_b
    iget-object v0, p1, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGServiceStateImpl;->writeTo(Landroid/os/Bundle;)V

    .line 142
    return-void
.end method

.method public ajc$after$com_lge_telephony_ServiceStateAO$2$e9c61a06(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V
    .registers 5
    .param p1, "obj"    # Landroid/telephony/ServiceState;
    .param p2, "s"    # Landroid/telephony/ServiceState;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,s"
        value = "(execution(void ServiceState.copyFrom(ServiceState)) && (this(obj) && args(s)))"
    .end annotation

    .prologue
    .line 34
    sget-boolean v0, Lcom/lge/telephony/ServiceStateAO;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "ServiceStateAO"

    const-string v1, "ServiceStateAO copyFrom()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_b
    iget-object v0, p1, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    iget-object v1, p2, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, v1}, Lcom/lge/telephony/LGServiceStateImpl;->copyFrom(Lcom/lge/telephony/LGServiceStateImpl;)V

    .line 36
    return-void
.end method

.method public ajc$after$com_lge_telephony_ServiceStateAO$3$380f9af1(Landroid/telephony/ServiceState;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "obj"    # Landroid/telephony/ServiceState;
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,in"
        value = "(execution(public ServiceState.new(Parcel)) && (this(obj) && args(in)))"
    .end annotation

    .prologue
    .line 46
    sget-boolean v0, Lcom/lge/telephony/ServiceStateAO;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "ServiceStateAO"

    const-string v1, "new(Parcel)"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_b
    iget-object v0, p1, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGServiceStateImpl;->readFrom(Landroid/os/Parcel;)V

    .line 48
    return-void
.end method

.method public ajc$after$com_lge_telephony_ServiceStateAO$4$65aac57c(Landroid/telephony/ServiceState;Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "obj"    # Landroid/telephony/ServiceState;
    .param p2, "out"    # Landroid/os/Parcel;
    .param p3, "flags"    # I
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,out,flags"
        value = "(execution(void ServiceState.writeToParcel(Parcel, int)) && (this(obj) && args(out, flags)))"
    .end annotation

    .prologue
    .line 58
    sget-boolean v0, Lcom/lge/telephony/ServiceStateAO;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "ServiceStateAO"

    const-string v1, "writeToParcel()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_b
    iget-object v0, p1, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p2, p3}, Lcom/lge/telephony/LGServiceStateImpl;->writeTo(Landroid/os/Parcel;I)V

    .line 60
    return-void
.end method

.method public ajc$after$com_lge_telephony_ServiceStateAO$8$643672e2(Landroid/telephony/ServiceState;I)V
    .registers 5
    .param p1, "obj"    # Landroid/telephony/ServiceState;
    .param p2, "state"    # I
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,state"
        value = "(execution(void ServiceState.setNullState(int)) && (this(obj) && args(state)))"
    .end annotation

    .prologue
    .line 116
    sget-boolean v0, Lcom/lge/telephony/ServiceStateAO;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "ServiceStateAO"

    const-string v1, "setNullState()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_b
    iget-object v0, p1, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGServiceStateImpl;->setNullState(I)V

    .line 118
    return-void
.end method

.method public ajc$after$com_lge_telephony_ServiceStateAO$9$c59d507f(Landroid/telephony/ServiceState;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "obj"    # Landroid/telephony/ServiceState;
    .param p2, "m"    # Landroid/os/Bundle;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,m"
        value = "(execution(void ServiceState.setFromNotifierBundle(Bundle)) && (this(obj) && args(m)))"
    .end annotation

    .prologue
    .line 128
    sget-boolean v0, Lcom/lge/telephony/ServiceStateAO;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "ServiceStateAO"

    const-string v1, "setFromNotifierBundle()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_b
    iget-object v0, p1, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p2}, Lcom/lge/telephony/LGServiceStateImpl;->readFrom(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method public ajc$around$com_lge_telephony_ServiceStateAO$1$e212ceb8(Landroid/telephony/ServiceState;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 5
    .param p1, "obj"    # Landroid/telephony/ServiceState;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(public Object ServiceState.getLGServiceStateImpl()) && this(obj))"
    .end annotation

    .prologue
    .line 22
    invoke-static {}, Lcom/lge/telephony/ServiceStateAO;->ajc$inlineAccessFieldGet$com_lge_telephony_ServiceStateAO$com_lge_telephony_ServiceStateAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ServiceStateAO"

    const-string v1, "getLGServiceStateImpl()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_d
    iget-object v0, p1, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    return-object v0
.end method

.method public ajc$around$com_lge_telephony_ServiceStateAO$5$4830c31(Landroid/telephony/ServiceState;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 5
    .param p1, "obj"    # Landroid/telephony/ServiceState;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(int ServiceState.hashCode()) && this(obj))"
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/lge/telephony/ServiceStateAO;->ajc$inlineAccessFieldGet$com_lge_telephony_ServiceStateAO$com_lge_telephony_ServiceStateAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ServiceStateAO"

    const-string v1, "hashCode()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_d
    invoke-static {p1, p2}, Lcom/lge/telephony/ServiceStateAO;->ajc$around$com_lge_telephony_ServiceStateAO$5$4830c31proceed(Landroid/telephony/ServiceState;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v1

    .line 72
    iget-object v0, p1, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    .line 71
    :goto_16
    add-int/2addr v0, v1

    return v0

    .line 72
    :cond_18
    iget-object v0, p1, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->hashCode()I

    move-result v0

    goto :goto_16
.end method

.method public ajc$around$com_lge_telephony_ServiceStateAO$6$dbb8946b(Landroid/telephony/ServiceState;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 7
    .param p1, "obj"    # Landroid/telephony/ServiceState;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,o,ajc$aroundClosure"
        value = "(execution(boolean ServiceState.equals(Object)) && (this(obj) && args(o)))"
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/lge/telephony/ServiceStateAO;->ajc$inlineAccessFieldGet$com_lge_telephony_ServiceStateAO$com_lge_telephony_ServiceStateAO$DBG()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "ServiceStateAO"

    const-string v2, "equals()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_d
    invoke-static {p1, p2, p3}, Lcom/lge/telephony/ServiceStateAO;->ajc$around$com_lge_telephony_ServiceStateAO$6$dbb8946bproceed(Landroid/telephony/ServiceState;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    .line 87
    .local v0, "result":Z
    if-nez v0, :cond_14

    .line 91
    .end local v0    # "result":Z
    .end local p2    # "o":Ljava/lang/Object;
    :goto_13
    return v0

    .restart local v0    # "result":Z
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_14
    if-eqz v0, :cond_24

    .line 92
    iget-object v1, p1, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    check-cast p2, Landroid/telephony/ServiceState;

    .end local p2    # "o":Ljava/lang/Object;
    iget-object v2, p2, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v1, v2}, Lcom/lge/telephony/LGServiceStateImpl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 91
    const/4 v0, 0x1

    goto :goto_13

    :cond_24
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public ajc$around$com_lge_telephony_ServiceStateAO$7$2ae00c0e(Landroid/telephony/ServiceState;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 5
    .param p1, "obj"    # Landroid/telephony/ServiceState;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(String ServiceState.toString()) && this(obj))"
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Lcom/lge/telephony/ServiceStateAO;->ajc$inlineAccessFieldGet$com_lge_telephony_ServiceStateAO$com_lge_telephony_ServiceStateAO$DBG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ServiceStateAO"

    const-string v1, "toString()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/lge/telephony/ServiceStateAO;->ajc$around$com_lge_telephony_ServiceStateAO$7$2ae00c0eproceed(Landroid/telephony/ServiceState;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object v1, p1, Landroid/telephony/ServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v1}, Lcom/lge/telephony/LGServiceStateImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
