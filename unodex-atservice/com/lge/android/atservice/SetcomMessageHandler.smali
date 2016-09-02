.class public Lcom/lge/android/atservice/SetcomMessageHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomMessageHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SetcomAT"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/android/atservice/SetcomMessageHandler;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 21
    sput-object p1, Lcom/lge/android/atservice/SetcomMessageHandler;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private getAllMsgCount()I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 39
    const/4 v7, 0x0

    .line 41
    .local v7, "count":I
    sget-object v0, Lcom/lge/android/atservice/SetcomMessageHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "simple"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 42
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_32

    .line 43
    :goto_25
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 44
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v7, v0

    goto :goto_25

    .line 47
    :cond_32
    const-string/jumbo v0, "SetcomAT"

    const-string/jumbo v1, "MSG count null cursor "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_3b
    const-string/jumbo v0, "SetcomAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v7
.end method

.method private getAllThreadCount()I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 25
    const/4 v7, 0x0

    .line 27
    .local v7, "count":I
    sget-object v0, Lcom/lge/android/atservice/SetcomMessageHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "simple"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 28
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_46

    .line 29
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v7, v0, 0x0

    .line 34
    :goto_2b
    const-string/jumbo v0, "SetcomAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG TH count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return v7

    .line 31
    :cond_46
    const-string/jumbo v0, "SetcomAT"

    const-string/jumbo v1, "MSG TH count null cursor "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method


# virtual methods
.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "responseString":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 58
    .local v0, "p0":Ljava/lang/String;
    if-eqz p1, :cond_a

    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_e

    .line 59
    :cond_a
    const-string/jumbo v2, "Null Param"

    return-object v2

    .line 62
    :cond_e
    const-string/jumbo v2, "SetcomAT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "===Params[0] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 65
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomMessageHandler;->getAllMsgCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "responseString":Ljava/lang/String;
    :goto_3d
    return-object v1

    .line 66
    .local v1, "responseString":Ljava/lang/String;
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 67
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomMessageHandler;->getAllThreadCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "responseString":Ljava/lang/String;
    goto :goto_3d

    .line 69
    .local v1, "responseString":Ljava/lang/String;
    :cond_54
    const-string/jumbo v1, "Please input valid value!!!"

    .local v1, "responseString":Ljava/lang/String;
    goto :goto_3d
.end method
