.class public Lcom/lge/cic/eden/clustering/utils/StoryTitleMaker;
.super Ljava/lang/Object;
.source "StoryTitleMaker.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method private storyIdMapper(Ljava/lang/String;)I
    .registers 3
    .param p1, "storyId"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public makeTitle(Ljava/lang/String;)Lcom/lge/cic/eden/clustering/types/StoryInfo;
    .registers 4
    .param p1, "storyId"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/clustering/utils/StoryTitleMaker;->storyIdMapper(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 20
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 14
    :pswitch_9
    new-instance v0, Lcom/lge/cic/eden/clustering/types/StoryInfo;

    const-string v1, "\ub098\uc758 \ub9db\uc9d1 \ud0d0\ubc29"

    invoke-direct {v0, p1, v1}, Lcom/lge/cic/eden/clustering/types/StoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 16
    :pswitch_11
    new-instance v0, Lcom/lge/cic/eden/clustering/types/StoryInfo;

    const-string v1, "\ubabb\ub2e4\ud55c \uc774\uc57c\uae30"

    invoke-direct {v0, p1, v1}, Lcom/lge/cic/eden/clustering/types/StoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 18
    :pswitch_19
    new-instance v0, Lcom/lge/cic/eden/clustering/types/StoryInfo;

    const-string v1, "\ud2b9\ubcc4\ud55c \uc0ac\ub78c\uacfc\uc758 \ucd94\uc5b5"

    invoke-direct {v0, p1, v1}, Lcom/lge/cic/eden/clustering/types/StoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 12
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_9
        :pswitch_11
        :pswitch_19
    .end packed-switch
.end method
