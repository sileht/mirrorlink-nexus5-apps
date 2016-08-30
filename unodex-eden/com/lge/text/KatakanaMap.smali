.class Lcom/lge/text/KatakanaMap;
.super Ljava/lang/Object;
.source "KatakanaMap.java"


# static fields
.field static final MAP_TO_FULL:[C

.field static final MAP_TO_HALF:[C

.field static final sVoicedSoundMarkToFull:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field static final sVoicedSoundMarkToHalf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    .line 11
    const/16 v0, 0x5f

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 12
    const v2, 0xff67

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const v2, 0xff71

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const v2, 0xff68

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const v2, 0xff72

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const v2, 0xff69

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const v2, 0xff73

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const v2, 0xff6a

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const v2, 0xff74

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const v2, 0xff6b

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const v2, 0xff75

    aput-char v2, v0, v1

    const/16 v1, 0xa

    .line 13
    const v2, 0xff76

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const v2, 0xff77

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const v2, 0xff78

    aput-char v2, v0, v1

    const/16 v1, 0x10

    const v2, 0xff79

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const v2, 0xff7a

    aput-char v2, v0, v1

    const/16 v1, 0x14

    .line 14
    const v2, 0xff7b

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const v2, 0xff7c

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const v2, 0xff7d

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0xff7e

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0xff7f

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    .line 15
    const v2, 0xff80

    aput-char v2, v0, v1

    const/16 v1, 0x20

    const v2, 0xff81

    aput-char v2, v0, v1

    const/16 v1, 0x22

    const v2, 0xff6f

    aput-char v2, v0, v1

    const/16 v1, 0x23

    const v2, 0xff82

    aput-char v2, v0, v1

    const/16 v1, 0x25

    const v2, 0xff83

    aput-char v2, v0, v1

    const/16 v1, 0x27

    const v2, 0xff84

    aput-char v2, v0, v1

    const/16 v1, 0x29

    .line 16
    const v2, 0xff85

    aput-char v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0xff86

    aput-char v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0xff87

    aput-char v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0xff88

    aput-char v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0xff89

    aput-char v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0xff8a

    aput-char v2, v0, v1

    const/16 v1, 0x31

    const v2, 0xff8b

    aput-char v2, v0, v1

    const/16 v1, 0x34

    .line 17
    const v2, 0xff8c

    aput-char v2, v0, v1

    const/16 v1, 0x37

    const v2, 0xff8d

    aput-char v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0xff8e

    aput-char v2, v0, v1

    const/16 v1, 0x3d

    .line 18
    const v2, 0xff8f

    aput-char v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0xff90

    aput-char v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0xff91

    aput-char v2, v0, v1

    const/16 v1, 0x40

    const v2, 0xff92

    aput-char v2, v0, v1

    const/16 v1, 0x41

    const v2, 0xff93

    aput-char v2, v0, v1

    const/16 v1, 0x42

    const v2, 0xff6c

    aput-char v2, v0, v1

    const/16 v1, 0x43

    const v2, 0xff94

    aput-char v2, v0, v1

    const/16 v1, 0x44

    const v2, 0xff6d

    aput-char v2, v0, v1

    const/16 v1, 0x45

    const v2, 0xff95

    aput-char v2, v0, v1

    const/16 v1, 0x46

    .line 19
    const v2, 0xff6e

    aput-char v2, v0, v1

    const/16 v1, 0x47

    const v2, 0xff96

    aput-char v2, v0, v1

    const/16 v1, 0x48

    const v2, 0xff97

    aput-char v2, v0, v1

    const/16 v1, 0x49

    const v2, 0xff98

    aput-char v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xff99

    aput-char v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0xff9a

    aput-char v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0xff9b

    aput-char v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0xff9c

    aput-char v2, v0, v1

    const/16 v1, 0x51

    .line 20
    const v2, 0xff66

    aput-char v2, v0, v1

    const/16 v1, 0x52

    const v2, 0xff9d

    aput-char v2, v0, v1

    const/16 v1, 0x5a

    .line 21
    const v2, 0xff65

    aput-char v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0xff70

    aput-char v2, v0, v1

    .line 11
    sput-object v0, Lcom/lge/text/KatakanaMap;->MAP_TO_HALF:[C

    .line 24
    const/16 v0, 0x38

    new-array v0, v0, [C

    fill-array-data v0, :array_1ac

    sput-object v0, Lcom/lge/text/KatakanaMap;->MAP_TO_FULL:[C

    .line 34
    invoke-static {}, Lcom/lge/text/KatakanaMap;->createFullToHalpMap()V

    .line 35
    invoke-static {}, Lcom/lge/text/KatakanaMap;->createHalfToFullMap()V

    .line 36
    return-void

    .line 24
    nop

    :array_1ac
    .array-data 2
        0x30f2s
        0x30a1s
        0x30a3s
        0x30a5s
        0x30a7s
        0x30a9s
        0x30e3s
        0x30e5s
        0x30e7s
        0x30c3s
        0x30fcs
        0x30a2s
        0x30a4s
        0x30a6s
        0x30a8s
        0x30aas
        0x30abs
        0x30ads
        0x30afs
        0x30b1s
        0x30b3s
        0x30b5s
        0x30b7s
        0x30b9s
        0x30bbs
        0x30bds
        0x30bfs
        0x30c1s
        0x30c4s
        0x30c6s
        0x30c8s
        0x30cas
        0x30cbs
        0x30ccs
        0x30cds
        0x30ces
        0x30cfs
        0x30d2s
        0x30d5s
        0x30d8s
        0x30dbs
        0x30des
        0x30dfs
        0x30e0s
        0x30e1s
        0x30e2s
        0x30e4s
        0x30e6s
        0x30e8s
        0x30e9s
        0x30eas
        0x30ebs
        0x30ecs
        0x30eds
        0x30efs
        0x30f3s
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFullToHalpMap()V
    .registers 3

    .prologue
    .line 39
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x304c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff76\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x304e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff77\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3050

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff78\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3052

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff79\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3054

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff7a\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3056

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff7b\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3058

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff7c\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x305a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff7d\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x305c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff7e\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x305e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff7f\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3060

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff80\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3062

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff81\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3065

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff82\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3067

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff83\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3069

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff84\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3070

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8a\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3071

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8a\uff9f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3073

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8b\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3074

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8b\uff9f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3076

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8c\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3077

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8c\uff9f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x3079

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8d\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x307a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8d\uff9f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x307c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8e\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x307d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8e\uff9f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30ac

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff76\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30ae

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff77\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30b0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff78\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30b2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff79\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30b4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff7a\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30b6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff7b\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30b8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff7c\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30ba

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff7d\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30bc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff7e\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30be

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff7f\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30c0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff80\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30c2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff81\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30c5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff82\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30c7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff83\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30c9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff84\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30d0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8a\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30d1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8a\uff9f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30d3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8b\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30d4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8b\uff9f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30d6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8c\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30d7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8c\uff9f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30d9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8d\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30da

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8d\uff9f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30dc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8e\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30dd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff8e\uff9f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    const/16 v1, 0x30f4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\uff73\uff9e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method private static createHalfToFullMap()V
    .registers 3

    .prologue
    .line 93
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff76\uff9e"

    const/16 v2, 0x304c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff77\uff9e"

    const/16 v2, 0x304e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff78\uff9e"

    const/16 v2, 0x3050

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff79\uff9e"

    const/16 v2, 0x3052

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff7a\uff9e"

    const/16 v2, 0x3054

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff7b\uff9e"

    const/16 v2, 0x3056

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff7c\uff9e"

    const/16 v2, 0x3058

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff7d\uff9e"

    const/16 v2, 0x305a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff7e\uff9e"

    const/16 v2, 0x305c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff7f\uff9e"

    const/16 v2, 0x305e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff80\uff9e"

    const/16 v2, 0x3060

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff81\uff9e"

    const/16 v2, 0x3062

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff82\uff9e"

    const/16 v2, 0x3065

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff83\uff9e"

    const/16 v2, 0x3067

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff84\uff9e"

    const/16 v2, 0x3069

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8a\uff9e"

    const/16 v2, 0x3070

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8a\uff9f"

    const/16 v2, 0x3071

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8b\uff9e"

    const/16 v2, 0x3073

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8b\uff9f"

    const/16 v2, 0x3074

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8c\uff9e"

    const/16 v2, 0x3076

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8c\uff9f"

    const/16 v2, 0x3077

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8d\uff9e"

    const/16 v2, 0x3079

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8d\uff9f"

    const/16 v2, 0x307a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8e\uff9e"

    const/16 v2, 0x307c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8e\uff9f"

    const/16 v2, 0x307d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff76\uff9e"

    const/16 v2, 0x30ac

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff77\uff9e"

    const/16 v2, 0x30ae

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff78\uff9e"

    const/16 v2, 0x30b0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff79\uff9e"

    const/16 v2, 0x30b2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff7a\uff9e"

    const/16 v2, 0x30b4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff7b\uff9e"

    const/16 v2, 0x30b6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff7c\uff9e"

    const/16 v2, 0x30b8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff7d\uff9e"

    const/16 v2, 0x30ba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff7e\uff9e"

    const/16 v2, 0x30bc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff7f\uff9e"

    const/16 v2, 0x30be

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff80\uff9e"

    const/16 v2, 0x30c0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff81\uff9e"

    const/16 v2, 0x30c2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff82\uff9e"

    const/16 v2, 0x30c5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff83\uff9e"

    const/16 v2, 0x30c7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff84\uff9e"

    const/16 v2, 0x30c9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8a\uff9e"

    const/16 v2, 0x30d0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8a\uff9f"

    const/16 v2, 0x30d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8b\uff9e"

    const/16 v2, 0x30d3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8b\uff9f"

    const/16 v2, 0x30d4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8c\uff9e"

    const/16 v2, 0x30d6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8c\uff9f"

    const/16 v2, 0x30d7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8d\uff9e"

    const/16 v2, 0x30d9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8d\uff9f"

    const/16 v2, 0x30da

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8e\uff9e"

    const/16 v2, 0x30dc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff8e\uff9f"

    const/16 v2, 0x30dd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    const-string v1, "\uff73\uff9e"

    const/16 v2, 0x30f4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method
