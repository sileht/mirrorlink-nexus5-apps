.class public Landroid/nfc/cardemulation/AAidGroup;
.super Ljava/lang/Object;
.source "AAidGroup.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AAidGroup.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/nfc/cardemulation/AAidGroup;


# instance fields
.field mDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    :try_start_0
    invoke-static {}, Landroid/nfc/cardemulation/AAidGroup;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 17
    :goto_3
    return-void

    .line 15
    :catch_4
    move-exception v0

    sput-object v0, Landroid/nfc/cardemulation/AAidGroup;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/cardemulation/AAidGroup;->mDescription:Ljava/lang/String;

    .line 15
    return-void
.end method

.method static synthetic ajc$around$android_nfc_cardemulation_AAidGroup$2$b4c84363proceed(Landroid/os/Parcel;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/nfc/cardemulation/AidGroup;
    .registers 4
    .param p0, "this"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    return-object v0
.end method

.method static synthetic ajc$around$android_nfc_cardemulation_AAidGroup$3$5472c04cproceed(Lorg/xmlpull/v1/XmlPullParser;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/nfc/cardemulation/AidGroup;
    .registers 4
    .param p0, "this"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    return-object v0
.end method

.method static synthetic ajc$around$android_nfc_cardemulation_AAidGroup$4$4daae811proceed(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "this"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 55
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

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$android_nfc_cardemulation_AAidGroup$5$11a42038proceed(Landroid/nfc/cardemulation/AidGroup;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 8
    .param p0, "this"    # Landroid/nfc/cardemulation/AidGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlpull/v1/XmlSerializer;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AAidGroup$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Landroid/nfc/cardemulation/AAidGroup;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AAidGroup$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/nfc/cardemulation/AAidGroup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AAidGroup$mDescription(Landroid/nfc/cardemulation/AAidGroup;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/nfc/cardemulation/AAidGroup;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AidGroup$aids(Landroid/nfc/cardemulation/AidGroup;)Ljava/util/List;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AidGroup$category(Landroid/nfc/cardemulation/AidGroup;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AidGroup$description(Landroid/nfc/cardemulation/AidGroup;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->description:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AAidGroup$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Landroid/nfc/cardemulation/AAidGroup;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AAidGroup$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Landroid/nfc/cardemulation/AAidGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AAidGroup$mDescription(Landroid/nfc/cardemulation/AAidGroup;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/nfc/cardemulation/AAidGroup;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AidGroup$aids(Landroid/nfc/cardemulation/AidGroup;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AidGroup$category(Landroid/nfc/cardemulation/AidGroup;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AidGroup$description(Landroid/nfc/cardemulation/AidGroup;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/nfc/cardemulation/AidGroup;->description:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AAidGroup$createAidGroup(Landroid/nfc/cardemulation/AAidGroup;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .registers 5

    .prologue
    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/cardemulation/AAidGroup;->createAidGroup(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/nfc/cardemulation/AAidGroup;

    invoke-direct {v0}, Landroid/nfc/cardemulation/AAidGroup;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/AAidGroup;->ajc$perSingletonInstance:Landroid/nfc/cardemulation/AAidGroup;

    return-void
.end method

.method public static aspectOf()Landroid/nfc/cardemulation/AAidGroup;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/nfc/cardemulation/AAidGroup;->ajc$perSingletonInstance:Landroid/nfc/cardemulation/AAidGroup;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_nfc_cardemulation_AAidGroup"

    sget-object v2, Landroid/nfc/cardemulation/AAidGroup;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/nfc/cardemulation/AAidGroup;->ajc$perSingletonInstance:Landroid/nfc/cardemulation/AAidGroup;

    return-object v0
.end method

.method private createAidGroup(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .registers 6
    .param p1, "aids"    # Ljava/util/List;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/nfc/cardemulation/AidGroup;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v0, p2, p3}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v0, "ret":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/nfc/cardemulation/AAidGroup;->ajc$perSingletonInstance:Landroid/nfc/cardemulation/AAidGroup;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$android_nfc_cardemulation_AAidGroup$2$b4c84363(Landroid/os/Parcel;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/AidGroup;
    .registers 10
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p3, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "source,ajc$aroundClosure"
        value = "(execution(* Parcelable.Creator+.createFromParcel(Parcel)) && (args(source) && within(AidGroup+)))"
    .end annotation

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "description":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 35
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "category":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 37
    .local v3, "listSize":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "aidList":Ljava/util/ArrayList;
    if-lez v3, :cond_1e

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 42
    :cond_1e
    invoke-static {p0, v0, v1, v2}, Landroid/nfc/cardemulation/AAidGroup;->ajc$inlineAccessMethod$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AAidGroup$createAidGroup(Landroid/nfc/cardemulation/AAidGroup;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v4

    return-object v4
.end method

.method public ajc$around$android_nfc_cardemulation_AAidGroup$3$5472c04c(Lorg/xmlpull/v1/XmlPullParser;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/AidGroup;
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p3, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "parser,ajc$aroundClosure"
        value = "(execution(AidGroup AidGroup.createFromXml(XmlPullParser)) && args(parser))"
    .end annotation

    .prologue
    .line 48
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/nfc/cardemulation/AAidGroup;->ajc$inlineAccessFieldSet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AAidGroup$mDescription(Landroid/nfc/cardemulation/AAidGroup;Ljava/lang/String;)V

    .line 49
    invoke-static {p1, p2}, Landroid/nfc/cardemulation/AAidGroup;->ajc$around$android_nfc_cardemulation_AAidGroup$3$5472c04cproceed(Lorg/xmlpull/v1/XmlPullParser;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v0

    .line 51
    .local v0, "ret":Landroid/nfc/cardemulation/AidGroup;
    invoke-static {v0}, Landroid/nfc/cardemulation/AAidGroup;->ajc$inlineAccessFieldGet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AidGroup$aids(Landroid/nfc/cardemulation/AidGroup;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Landroid/nfc/cardemulation/AAidGroup;->ajc$inlineAccessFieldGet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AidGroup$category(Landroid/nfc/cardemulation/AidGroup;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/nfc/cardemulation/AAidGroup;->ajc$inlineAccessFieldGet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AAidGroup$mDescription(Landroid/nfc/cardemulation/AAidGroup;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Landroid/nfc/cardemulation/AAidGroup;->ajc$inlineAccessMethod$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AAidGroup$createAidGroup(Landroid/nfc/cardemulation/AAidGroup;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v1

    return-object v1
.end method

.method public ajc$around$android_nfc_cardemulation_AAidGroup$4$4daae811(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/String;
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p5, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "parser,namespace,name,ajc$aroundClosure"
        value = "(call(* XmlPullParser.getAttributeValue(String, String)) && (target(parser) && (args(namespace, name) && within(AidGroup))))"
    .end annotation

    .prologue
    .line 56
    invoke-static {p1, p2, p3, p4}, Landroid/nfc/cardemulation/AAidGroup;->ajc$around$android_nfc_cardemulation_AAidGroup$4$4daae811proceed(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "category"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez v0, :cond_f

    .line 66
    :cond_e
    :goto_e
    return-object v0

    .line 62
    :cond_f
    const/4 v1, 0x0

    const-string v2, "description"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/nfc/cardemulation/AAidGroup;->ajc$inlineAccessFieldSet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AAidGroup$mDescription(Landroid/nfc/cardemulation/AAidGroup;Ljava/lang/String;)V

    .line 63
    invoke-static {p0}, Landroid/nfc/cardemulation/AAidGroup;->ajc$inlineAccessFieldGet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AAidGroup$mDescription(Landroid/nfc/cardemulation/AAidGroup;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    .line 64
    const-string v1, "AAidGroup.aj"

    const-string v2, "Ignoring <aid-group> tag without valid description"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public ajc$around$android_nfc_cardemulation_AAidGroup$5$11a42038(Landroid/nfc/cardemulation/AidGroup;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 13
    .param p1, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p7, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "aidGroup,out,namespace,name,value,ajc$aroundClosure"
        value = "(call(* XmlSerializer.attribute(String, String, String)) && (target(out) && (args(namespace, name, value) && (this(aidGroup) && within(AidGroup)))))"
    .end annotation

    .prologue
    .line 73
    invoke-static/range {p1 .. p6}, Landroid/nfc/cardemulation/AAidGroup;->ajc$around$android_nfc_cardemulation_AAidGroup$5$11a42038proceed(Landroid/nfc/cardemulation/AidGroup;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 74
    .local v0, "ret":Lorg/xmlpull/v1/XmlSerializer;
    const-string v2, "category"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object v1, v0

    .line 81
    .end local v0    # "ret":Lorg/xmlpull/v1/XmlSerializer;
    .local v1, "ret":Lorg/xmlpull/v1/XmlSerializer;
    :goto_d
    return-object v1

    .line 78
    .end local v1    # "ret":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v0    # "ret":Lorg/xmlpull/v1/XmlSerializer;
    :cond_e
    invoke-static {p1}, Landroid/nfc/cardemulation/AAidGroup;->ajc$inlineAccessFieldGet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AidGroup$description(Landroid/nfc/cardemulation/AidGroup;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 79
    const/4 v2, 0x0

    const-string v3, "description"

    invoke-static {p1}, Landroid/nfc/cardemulation/AAidGroup;->ajc$inlineAccessFieldGet$android_nfc_cardemulation_AAidGroup$android_nfc_cardemulation_AidGroup$description(Landroid/nfc/cardemulation/AidGroup;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    :cond_1f
    move-object v1, v0

    .line 81
    .end local v0    # "ret":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v1    # "ret":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_d
.end method

.method public ajc$before$android_nfc_cardemulation_AAidGroup$1$2875d6c0(Landroid/nfc/cardemulation/AidGroup;Landroid/os/Parcel;ILorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .param p1, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "flags"    # I
    .param p4, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "aidGroup,dest,flags"
        value = "(execution(void AidGroup.writeToParcel(Parcel, int)) && (args(dest, flags) && target(aidGroup)))"
    .end annotation

    .prologue
    .line 21
    iget-object v0, p1, Landroid/nfc/cardemulation/AidGroup;->description:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-object v0, p1, Landroid/nfc/cardemulation/AidGroup;->description:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    :goto_d
    return-void

    .line 25
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d
.end method
