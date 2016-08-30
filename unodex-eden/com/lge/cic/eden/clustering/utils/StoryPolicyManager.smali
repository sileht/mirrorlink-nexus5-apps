.class public Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;
.super Ljava/lang/Object;
.source "StoryPolicyManager.java"


# static fields
.field static logger:Lcom/lge/cic/eden/utils/Logger;


# instance fields
.field private final PREF_NAME:Ljava/lang/String;

.field private edenPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "com.lge.cic.iam.storyclustering.pref"

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;->PREF_NAME:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "StoryPolicyManager()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 19
    const-string v0, "com.lge.cic.iam.storyclustering.pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;->edenPref:Landroid/content/SharedPreferences;

    .line 20
    return-void
.end method


# virtual methods
.method public checkClusteringCondition(Ljava/lang/String;)Z
    .registers 10
    .param p1, "storyName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x1

    .line 54
    iget-object v4, p0, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;->edenPref:Landroid/content/SharedPreferences;

    invoke-interface {v4, p1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 55
    .local v2, "prevClusteringMonth":I
    iget-object v4, p0, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;->edenPref:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_POLICY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 57
    .local v1, "policyDate":I
    if-ne v2, v7, :cond_24

    .line 67
    :cond_23
    :goto_23
    return v3

    .line 60
    :cond_24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 62
    .local v0, "currentCal":Ljava/util/Calendar;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_38

    .line 63
    if-le v1, v7, :cond_38

    .line 64
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v1, v4, :cond_23

    .line 67
    :cond_38
    const/4 v3, 0x0

    goto :goto_23
.end method

.method public clearAll()V
    .registers 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;->edenPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method

.method public clearClusteringDate(Ljava/lang/String;)V
    .registers 4
    .param p1, "storyName"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;->edenPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method

.method public clearPolicy(Ljava/lang/String;)V
    .registers 5
    .param p1, "storyName"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;->edenPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_POLICY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    return-void
.end method

.method public saveClusteringDate(Ljava/lang/String;)V
    .registers 5
    .param p1, "storyName"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v2, p0, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;->edenPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 36
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 37
    .local v0, "currentCal":Ljava/util/Calendar;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method public setPolicy(Ljava/lang/String;I)V
    .registers 6
    .param p1, "storyName"    # Ljava/lang/String;
    .param p2, "day"    # I

    .prologue
    .line 23
    iget-object v1, p0, Lcom/lge/cic/eden/clustering/utils/StoryPolicyManager;->edenPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_POLICY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method
