.class public Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;
.super Ljava/lang/Object;
.source "FmRadioCommandPolicy.java"

# interfaces
.implements Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;


# static fields
.field private static final T:Ljava/lang/String; = "FMFRW_FmRadioCommandPolicy"

.field static defeatRelationship:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lge/internal/hardware/fmradio/FMRadioCommand;",
            "Ljava/util/Map",
            "<",
            "Lcom/lge/internal/hardware/fmradio/FMRadioCommand;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static myInstance:Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 20
    new-instance v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;

    invoke-direct {v1}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;-><init>()V

    sput-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->myInstance:Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;

    .line 44
    new-instance v1, Ljava/util/EnumMap;

    .line 45
    const-class v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 44
    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 53
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 74
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 95
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 116
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 137
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 158
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 179
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 200
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 221
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 242
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 263
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 284
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 305
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    const-class v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 326
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blindFights(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)I
    .registers 6
    .param p1, "newCommand"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p2, "runningCommand"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .prologue
    .line 367
    const-string v0, "FMFRW_FmRadioCommandPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unspecified command case relation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 368
    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance()Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->myInstance:Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;

    return-object v0
.end method


# virtual methods
.method public fights(Lcom/lge/internal/hardware/fmradio/CommandCase;Lcom/lge/internal/hardware/fmradio/CommandCase;)I
    .registers 5
    .param p1, "newCase"    # Lcom/lge/internal/hardware/fmradio/CommandCase;
    .param p2, "runningCase"    # Lcom/lge/internal/hardware/fmradio/CommandCase;

    .prologue
    .line 346
    check-cast p1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;

    .end local p1    # "newCase":Lcom/lge/internal/hardware/fmradio/CommandCase;
    iget-object v0, p1, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 347
    check-cast p2, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;

    .end local p2    # "runningCase":Lcom/lge/internal/hardware/fmradio/CommandCase;
    iget-object v1, p2, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 346
    invoke-virtual {p0, v0, v1}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->fights(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)I

    move-result v0

    return v0
.end method

.method fights(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)I
    .registers 6
    .param p1, "newCommand"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p2, "runningCommand"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .prologue
    .line 352
    sget-object v2, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->defeatRelationship:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 353
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Ljava/lang/Integer;>;"
    if-nez v1, :cond_f

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->blindFights(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)I

    move-result v2

    .line 358
    :goto_e
    return v2

    .line 357
    :cond_f
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 358
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_e

    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->blindFights(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)I

    move-result v2

    goto :goto_e
.end method
