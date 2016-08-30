.class public Lcom/lge/cic/eden/service/dispatcher/ServiceCommand;
.super Ljava/lang/Object;
.source "ServiceCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;
    }
.end annotation


# static fields
.field public static final MSG_CHECK_GALLERY:Ljava/lang/String; = "CheckGallery"

.field public static final MSG_CHECK_PERMISSION:Ljava/lang/String; = "PermissionCheck"

.field public static final MSG_DATABASE_CLEAR:Ljava/lang/String; = "ClearDB"

.field public static final MSG_DELETE_CARD:Ljava/lang/String; = "DeleteCard"

.field public static final MSG_DELETE_LOCATION:Ljava/lang/String; = "DeleteLocation"

.field public static final MSG_DETECT_POSITION:Ljava/lang/String; = "com.lge.myplace.homeDetected"

.field public static final MSG_EVENT_MERGE:Ljava/lang/String; = "EventMerge"

.field public static final MSG_EVENT_RENAME:Ljava/lang/String; = "EventRename"

.field public static final MSG_EVENT_SHOWHIDE:Ljava/lang/String; = "EventShowHide"

.field public static final MSG_MANUAL_ANALYSIS:Ljava/lang/String; = "ManualAnalysis"

.field public static final MSG_MANUAL_REGIST_ALARM:Ljava/lang/String; = "RegisterAlarm"

.field public static final MSG_MEDIA_DELETE:Ljava/lang/String; = "MediaDelete"

.field public static final MSG_MEDIA_LIGHT_SYNC:Ljava/lang/String; = "MediaLightSync"

.field public static final MSG_MEDIA_SHOWHIDE:Ljava/lang/String; = "MediaShowHide"

.field public static final MSG_MEDIA_SYNC:Ljava/lang/String; = "MediaSync"

.field public static final MSG_REMOVE_ALL_TASK:Ljava/lang/String; = "REMOVE_ALL_TASK"

.field public static final MSG_REQUEST_STOP_MANAGING_SERVICE:Ljava/lang/String; = "REQUEST_STOP_MANAGING_SERVICE"

.field public static final MSG_RUN_GALLERY:Ljava/lang/String; = "RunGallery"

.field public static final MSG_SET_LOCATION:Ljava/lang/String; = "SetLocation"

.field public static final MSG_START_ANALYSIS:Ljava/lang/String; = "START_ANALYSIS"

.field public static final MSG_STOP_ANALYSIS:Ljava/lang/String; = "STOP_ANALYSIS"

.field public static final MSG_STOP_GALLERY:Ljava/lang/String; = "StopGallery"

.field public static final MSG_STORY_ANALYSIS:Ljava/lang/String; = "StoryAnalysis"

.field public static final MSG_TYPE:Ljava/lang/String; = "MSG_TYPE"

.field private static final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-class v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/String;)Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    if-nez p0, :cond_5

    .line 48
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->NONE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    .line 99
    :goto_4
    return-object v0

    .line 51
    :cond_5
    const-string v0, "RunGallery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 52
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto :goto_4

    .line 53
    :cond_10
    const-string v0, "StopGallery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 54
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto :goto_4

    .line 55
    :cond_1b
    const-string v0, "CheckGallery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 56
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto :goto_4

    .line 57
    :cond_26
    const-string v0, "com.lge.myplace.homeDetected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 58
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto :goto_4

    .line 59
    :cond_31
    const-string v0, "MediaShowHide"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 60
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto :goto_4

    .line 61
    :cond_3c
    const-string v0, "ClearDB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 62
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto :goto_4

    .line 63
    :cond_47
    const-string v0, "EventShowHide"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 64
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto :goto_4

    .line 65
    :cond_52
    const-string v0, "START_ANALYSIS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 66
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto :goto_4

    .line 67
    :cond_5d
    const-string v0, "STOP_ANALYSIS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 68
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto :goto_4

    .line 69
    :cond_68
    const-string v0, "REMOVE_ALL_TASK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 70
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto :goto_4

    .line 71
    :cond_73
    const-string v0, "REQUEST_STOP_MANAGING_SERVICE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 72
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto :goto_4

    .line 73
    :cond_7e
    const-string v0, "DeleteCard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 74
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto/16 :goto_4

    .line 75
    :cond_8a
    const-string v0, "MediaDelete"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 76
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto/16 :goto_4

    .line 77
    :cond_96
    const-string v0, "MediaLightSync"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 78
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto/16 :goto_4

    .line 79
    :cond_a2
    const-string v0, "SetLocation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 80
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->EVENT:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto/16 :goto_4

    .line 81
    :cond_ae
    const-string v0, "DeleteLocation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 82
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->EVENT:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto/16 :goto_4

    .line 83
    :cond_ba
    const-string v0, "EventMerge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 84
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto/16 :goto_4

    .line 85
    :cond_c6
    const-string v0, "EventRename"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 86
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto/16 :goto_4

    .line 87
    :cond_d2
    const-string v0, "MediaSync"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 88
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto/16 :goto_4

    .line 89
    :cond_de
    const-string v0, "ManualAnalysis"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 90
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->EVENT:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto/16 :goto_4

    .line 91
    :cond_ea
    const-string v0, "StoryAnalysis"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 92
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->STORY:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto/16 :goto_4

    .line 93
    :cond_f6
    const-string v0, "PermissionCheck"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 94
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto/16 :goto_4

    .line 95
    :cond_102
    const-string v0, "RegisterAlarm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 96
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto/16 :goto_4

    .line 98
    :cond_10e
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "command for staring service is an invalid."

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->NONE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    goto/16 :goto_4
.end method
