.class public Lcom/lge/cic/eden/clustering/utils/CountryChecker;
.super Ljava/lang/Object;
.source "CountryChecker.java"


# static fields
.field private static final GET_METHOD_NAME:Ljava/lang/String; = "get"

.field private static final SYSTEM_PROPERTIES_CLASS_NAME:Ljava/lang/String; = "android.os.SystemProperties"

.field private static sGetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/cic/eden/clustering/utils/CountryChecker;->sGetMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTargetCountry(Ljava/lang/String;)Z
    .registers 2
    .param p0, "countryName"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-static {}, Lcom/lge/cic/eden/clustering/utils/CountryChecker;->getTargetCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getTargetCountry()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 17
    :try_start_1
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/CountryChecker;->sGetMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1b

    .line 18
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 19
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/lge/cic/eden/clustering/utils/CountryChecker;->sGetMethod:Ljava/lang/reflect/Method;

    .line 21
    :cond_1b
    sget-object v1, Lcom/lge/cic/eden/clustering/utils/CountryChecker;->sGetMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.build.target_country"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2c} :catch_2d

    .line 24
    :goto_2c
    return-object v1

    .line 22
    :catch_2d
    move-exception v1

    move-object v1, v2

    .line 24
    goto :goto_2c
.end method
