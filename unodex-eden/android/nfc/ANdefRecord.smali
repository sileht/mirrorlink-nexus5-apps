.class public Landroid/nfc/ANdefRecord;
.super Ljava/lang/Object;
.source "ANdefRecord.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ANdefRecord.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/nfc/ANdefRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    :try_start_0
    invoke-static {}, Landroid/nfc/ANdefRecord;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 15
    :goto_3
    return-void

    .line 13
    :catch_4
    move-exception v0

    sput-object v0, Landroid/nfc/ANdefRecord;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_nfc_ANdefRecord$1$7bcea090proceed(Landroid/nfc/NdefRecord;Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/StringBuilder;
    .registers 6
    .param p0, "this"    # Landroid/nfc/NdefRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_ANdefRecord$android_nfc_ANdefRecord$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Landroid/nfc/ANdefRecord;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_ANdefRecord$android_nfc_ANdefRecord$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/nfc/ANdefRecord;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_ANdefRecord$android_nfc_ANdefRecord$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Landroid/nfc/ANdefRecord;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_ANdefRecord$android_nfc_ANdefRecord$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Landroid/nfc/ANdefRecord;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/nfc/ANdefRecord;

    invoke-direct {v0}, Landroid/nfc/ANdefRecord;-><init>()V

    sput-object v0, Landroid/nfc/ANdefRecord;->ajc$perSingletonInstance:Landroid/nfc/ANdefRecord;

    return-void
.end method

.method public static aspectOf()Landroid/nfc/ANdefRecord;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/nfc/ANdefRecord;->ajc$perSingletonInstance:Landroid/nfc/ANdefRecord;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_nfc_ANdefRecord"

    sget-object v2, Landroid/nfc/ANdefRecord;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/nfc/ANdefRecord;->ajc$perSingletonInstance:Landroid/nfc/ANdefRecord;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/nfc/ANdefRecord;->ajc$perSingletonInstance:Landroid/nfc/ANdefRecord;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$android_nfc_ANdefRecord$1$7bcea090(Landroid/nfc/NdefRecord;Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/StringBuilder;
    .registers 9
    .param p1, "record"    # Landroid/nfc/NdefRecord;
    .param p2, "builder"    # Ljava/lang/StringBuilder;
    .param p3, "param"    # Ljava/lang/String;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p5, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "record,builder,param,ajc$aroundClosure"
        value = "(call(* StringBuilder.append(..)) && (args(param) && (target(builder) && (this(record) && (within(NdefRecord) && withincode(String NdefRecord.toString(..)))))))"
    .end annotation

    .prologue
    .line 20
    const-string v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, " type="

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 21
    :cond_16
    invoke-static {p1, p2, p3, p4}, Landroid/nfc/ANdefRecord;->ajc$around$android_nfc_ANdefRecord$1$7bcea090proceed(Landroid/nfc/NdefRecord;Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    :goto_1a
    return-object v1

    .line 25
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 26
    .local v0, "type":Ljava/lang/String;
    invoke-static {p1, p2, p3, p4}, Landroid/nfc/ANdefRecord;->ajc$around$android_nfc_ANdefRecord$1$7bcea090proceed(Landroid/nfc/NdefRecord;Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_37} :catch_39

    move-result-object v1

    goto :goto_1a

    .line 30
    .end local v0    # "type":Ljava/lang/String;
    :catch_39
    move-exception v1

    invoke-static {p1, p2, p3, p4}, Landroid/nfc/ANdefRecord;->ajc$around$android_nfc_ANdefRecord$1$7bcea090proceed(Landroid/nfc/NdefRecord;Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_1a
.end method
