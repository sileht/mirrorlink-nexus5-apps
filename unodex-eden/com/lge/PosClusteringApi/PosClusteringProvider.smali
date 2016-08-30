.class public Lcom/lge/PosClusteringApi/PosClusteringProvider;
.super Landroid/content/ContentProvider;
.source "PosClusteringProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.lge.myplace.engine.app.data"

.field static final CONTENT_URI:Ljava/lang/String; = "content://com.lge.myplace.engine.app.data"

.field static final TYPE_GET_HOME_POS_INFO:I = 0x8


# instance fields
.field private g:Lcom/lge/PosClustering/Globals;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, "reqValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "yk.hong"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "@provider >  size : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 45
    .local v2, "size":I
    if-lt v2, v9, :cond_45

    .line 47
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 49
    .local v1, "serviceType":I
    if-lt v2, v8, :cond_46

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 50
    .local v3, "str1":Ljava/lang/String;
    :goto_39
    if-le v2, v8, :cond_42

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 52
    .local v4, "str2":Ljava/lang/String;
    :cond_42
    packed-switch v1, :pswitch_data_74

    .line 59
    .end local v1    # "serviceType":I
    .end local v3    # "str1":Ljava/lang/String;
    .end local v4    # "str2":Ljava/lang/String;
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_45
    :goto_45
    return-object p1

    .restart local v1    # "serviceType":I
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_46
    move-object v3, v4

    .line 49
    goto :goto_39

    .line 55
    .restart local v3    # "str1":Ljava/lang/String;
    .restart local v4    # "str2":Ljava/lang/String;
    :pswitch_48
    const-string v5, "yk.hong"

    const-string v6, "TYPE_GET_HOME_POS_INFO"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "content://com.lge.myplace.engine.app.data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/PosClusteringApi/PosClusteringProvider;->g:Lcom/lge/PosClustering/Globals;

    invoke-virtual {v6}, Lcom/lge/PosClustering/Globals;->getHomePosInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_45

    .line 52
    nop

    :pswitch_data_74
    .packed-switch 0x8
        :pswitch_48
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 66
    new-instance v0, Lcom/lge/PosClustering/Globals;

    invoke-virtual {p0}, Lcom/lge/PosClusteringApi/PosClusteringProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/PosClustering/Globals;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/PosClusteringApi/PosClusteringProvider;->g:Lcom/lge/PosClustering/Globals;

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # [Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method
