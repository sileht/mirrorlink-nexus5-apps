.class public Landroid/widget/ShareActionProviderEx;
.super Landroid/widget/ShareActionProvider;
.source "ShareActionProviderEx.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    .line 33
    const-string v0, "share_history.xml"

    iput-object v0, p0, Landroid/widget/ShareActionProviderEx;->mShareHistoryFileName:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Landroid/widget/ShareActionProviderEx;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public activitySelected(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v2, p0, Landroid/widget/ShareActionProviderEx;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/ShareActionProviderEx;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 85
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v2

    if-lt v1, v2, :cond_11

    .line 90
    const/4 v2, 0x0

    :goto_10
    return-object v2

    .line 86
    :cond_11
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    goto :goto_10

    .line 85
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public getSortedList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v2, "mList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Landroid/widget/ShareActionProviderEx;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/ShareActionProviderEx;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 55
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v3

    if-lt v1, v3, :cond_15

    .line 58
    return-object v2

    .line 56
    :cond_15
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public getSortedListAndWeight()Ljava/util/LinkedHashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 69
    .local v1, "hashMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/pm/ResolveInfo;Ljava/lang/Float;>;"
    iget-object v3, p0, Landroid/widget/ShareActionProviderEx;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/ShareActionProviderEx;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 70
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v3

    if-lt v2, v3, :cond_15

    .line 73
    return-object v1

    .line 71
    :cond_15
    invoke-virtual {v0, v2}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {v0, v2}, Landroid/widget/ActivityChooserModel;->getActivityWeight(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method
