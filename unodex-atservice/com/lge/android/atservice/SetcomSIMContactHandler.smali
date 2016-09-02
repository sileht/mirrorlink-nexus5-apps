.class public Lcom/lge/android/atservice/SetcomSIMContactHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomSIMContactHandler.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomSIMContactHandler;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private GetSIMContactCount()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 50
    const-string/jumbo v6, ""

    .line 52
    .local v6, "requestString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v7, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "account_type = \'com.android.contacts.sim\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomSIMContactHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v3, "_count"

    aput-object v3, v2, v10

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 56
    .local v9, "simCusor":Landroid/database/Cursor;
    if-nez v9, :cond_2c

    .line 57
    return-object v4

    .line 59
    :cond_2c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 60
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 61
    .local v8, "simCount":I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 63
    const-string/jumbo v0, "%d"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 64
    return-object v6
.end method


# virtual methods
.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 28
    const/4 v1, 0x0

    .line 30
    .local v1, "responseString":Ljava/lang/String;
    if-eqz p1, :cond_1a

    array-length v3, p1

    if-lez v3, :cond_1a

    .line 31
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 32
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomSIMContactHandler;->GetSIMContactCount()Ljava/lang/String;

    move-result-object v1

    .line 36
    .end local v1    # "responseString":Ljava/lang/String;
    :cond_1a
    if-nez v1, :cond_21

    .line 37
    if-nez p1, :cond_22

    .line 38
    const-string/jumbo v1, "parameter is null"

    .line 46
    :cond_21
    return-object v1

    .line 40
    :cond_22
    const-string/jumbo v1, "Invalid parameter: "

    .line 41
    .local v1, "responseString":Ljava/lang/String;
    array-length v3, p1

    :goto_26
    if-ge v2, v3, :cond_21

    aget-object v0, p1, v2

    .line 42
    .local v0, "p":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_26
.end method
