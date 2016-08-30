.class public Lcom/lge/config/Configs;
.super Ljava/lang/Object;
.source "Configs.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Configs"

.field static configs:Lcom/lge/config/Configs;

.field static mInit:Z


# instance fields
.field mLogLevel:I

.field mLogLevels:[Z

.field resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/config/Configs;->configs:Lcom/lge/config/Configs;

    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/config/Configs;->mInit:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/config/Configs;->resources:Landroid/content/res/Resources;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/config/Configs;->mLogLevel:I

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/config/Configs;->resources:Landroid/content/res/Resources;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/config/Configs;->mLogLevel:I

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/config/Configs;->resources:Landroid/content/res/Resources;

    .line 24
    invoke-direct {p0}, Lcom/lge/config/Configs;->init()V

    .line 25
    return-void
.end method

.method public static getConfigs()Lcom/lge/config/Configs;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/lge/config/Configs;->configs:Lcom/lge/config/Configs;

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/lge/config/Configs;->mInit:Z

    if-nez v0, :cond_f

    .line 51
    new-instance v0, Lcom/lge/config/Configs;

    invoke-direct {v0}, Lcom/lge/config/Configs;-><init>()V

    sput-object v0, Lcom/lge/config/Configs;->configs:Lcom/lge/config/Configs;

    .line 53
    :cond_f
    sget-object v0, Lcom/lge/config/Configs;->configs:Lcom/lge/config/Configs;

    return-object v0
.end method

.method public static getConfigs(Landroid/content/Context;)Lcom/lge/config/Configs;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-boolean v0, Lcom/lge/config/Configs;->mInit:Z

    if-nez v0, :cond_10

    if-eqz p0, :cond_10

    .line 43
    new-instance v0, Lcom/lge/config/Configs;

    invoke-direct {v0, p0}, Lcom/lge/config/Configs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/config/Configs;->configs:Lcom/lge/config/Configs;

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/config/Configs;->mInit:Z

    .line 46
    :cond_10
    sget-object v0, Lcom/lge/config/Configs;->configs:Lcom/lge/config/Configs;

    return-object v0
.end method

.method private init()V
    .registers 5

    .prologue
    .line 28
    iget-object v1, p0, Lcom/lge/config/Configs;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/lge/internal/R$integer;->config_framework_log_level:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lge/config/Configs;->mLogLevel:I

    .line 30
    iget v1, p0, Lcom/lge/config/Configs;->mLogLevel:I

    iget-object v2, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    array-length v2, v2

    if-le v1, v2, :cond_19

    .line 31
    const-string v1, "Configs"

    const-string v2, "Init is failed, because the specified log level is bigger than limit."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_18
    return-void

    .line 35
    :cond_19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget v1, p0, Lcom/lge/config/Configs;->mLogLevel:I

    if-lt v0, v1, :cond_3b

    .line 38
    const-string v1, "Configs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The framework log level is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lge/config/Configs;->mLogLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 36
    :cond_3b
    iget-object v1, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method


# virtual methods
.method public logLevel1()Z
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public logLevel2()Z
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public logLevel3()Z
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/config/Configs;->mLogLevels:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method
