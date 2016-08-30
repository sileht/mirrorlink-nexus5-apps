.class public Lcom/lge/internal/hardware/fmradio/RdsData;
.super Ljava/lang/Object;
.source "RdsData.java"

# interfaces
.implements Lcom/lge/internal/hardware/fmradio/OnRdsReportedListener;


# static fields
.field public static final FM_RDS_PTY_INFOS:[Ljava/lang/String;

.field static final MAX_PROGRAM_TYPE:I = 0x1f

.field static final MIN_PROGRAM_TYPE:I = 0x1

.field static final PROGRAM_TYPE_UNDEFINED:I


# instance fields
.field programService:Ljava/lang/String;

.field programType:I

.field radioText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 13
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 14
    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 15
    const-string v2, "News"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 16
    const-string v2, "Current affairs"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 17
    const-string v2, "Information"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 18
    const-string v2, "Sport"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 19
    const-string v2, "Education"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 20
    const-string v2, "Drama"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 21
    const-string v2, "Culture"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 22
    const-string v2, "Science"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 23
    const-string v2, "Varied"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 24
    const-string v2, "Pop Music"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 25
    const-string v2, "Rock Music"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 26
    const-string v2, "M.O.R. Music"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 27
    const-string v2, "Light classical"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 28
    const-string v2, "Serious classical"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 29
    const-string v2, "Other Music"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 30
    const-string v2, "Weather"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 31
    const-string v2, "Finance"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 32
    const-string v2, "Children\'s Programs"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 33
    const-string v2, "Social Affairs"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 34
    const-string v2, "Religion"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 35
    const-string v2, "Phone In"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 36
    const-string v2, "Travel"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 37
    const-string v2, "Leisure"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 38
    const-string v2, "Jazz Music"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 39
    const-string v2, "Country Music"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 40
    const-string v2, "National Music"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 41
    const-string v2, "Oldies Music"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 42
    const-string v2, "Folk Music"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 43
    const-string v2, "Documentary"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 44
    const-string v2, "Alarm Test"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 45
    const-string v2, "Alarm"

    aput-object v2, v0, v1

    .line 13
    sput-object v0, Lcom/lge/internal/hardware/fmradio/RdsData;->FM_RDS_PTY_INFOS:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programService:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->radioText:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/lge/internal/hardware/fmradio/RdsData;
    .registers 4
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    .line 146
    new-instance v0, Lcom/lge/internal/hardware/fmradio/RdsData;

    invoke-direct {v0}, Lcom/lge/internal/hardware/fmradio/RdsData;-><init>()V

    .line 147
    .local v0, "d":Lcom/lge/internal/hardware/fmradio/RdsData;
    const-string v1, "programService"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/internal/hardware/fmradio/RdsData;->programService:Ljava/lang/String;

    .line 148
    const-string v1, "programType"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    .line 149
    const-string v1, "radioText"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/internal/hardware/fmradio/RdsData;->radioText:Ljava/lang/String;

    .line 150
    return-object v0
.end method

.method public static getProgramTypeString(I)Ljava/lang/String;
    .registers 2
    .param p0, "programType"    # I

    .prologue
    .line 130
    sget-object v0, Lcom/lge/internal/hardware/fmradio/RdsData;->FM_RDS_PTY_INFOS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/lge/internal/hardware/fmradio/RdsData;
    .registers 2

    .prologue
    .line 97
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/internal/hardware/fmradio/RdsData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    .line 99
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    new-instance v0, Lcom/lge/internal/hardware/fmradio/RdsData;

    invoke-direct {v0}, Lcom/lge/internal/hardware/fmradio/RdsData;-><init>()V

    goto :goto_6
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/RdsData;->clone()Lcom/lge/internal/hardware/fmradio/RdsData;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    if-nez p1, :cond_5

    .line 90
    :cond_4
    :goto_4
    return v1

    .line 87
    :cond_5
    if-ne p0, p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 88
    :cond_9
    instance-of v3, p1, Lcom/lge/internal/hardware/fmradio/RdsData;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 89
    check-cast v0, Lcom/lge/internal/hardware/fmradio/RdsData;

    .line 90
    .local v0, "lhs":Lcom/lge/internal/hardware/fmradio/RdsData;
    iget v3, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    iget v4, v0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    if-ne v3, v4, :cond_4

    .line 91
    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programService:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/internal/hardware/fmradio/RdsData;->programService:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 92
    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->radioText:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/internal/hardware/fmradio/RdsData;->radioText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 90
    goto :goto_4
.end method

.method public getProgramService()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programService:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    sget-object v0, Lcom/lge/internal/hardware/fmradio/RdsData;->FM_RDS_PTY_INFOS:[Ljava/lang/String;

    iget v1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRadioText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->radioText:Ljava/lang/String;

    return-object v0
.end method

.method public onRdsInitialize()V
    .registers 2

    .prologue
    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programService:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->radioText:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public onRdsProgramServiceReported(Ljava/lang/String;)Z
    .registers 4
    .param p1, "programService"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "currentPS":Ljava/lang/String;
    if-eqz p1, :cond_13

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 53
    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programService:Ljava/lang/String;

    .line 54
    const/4 v1, 0x1

    .line 57
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public onRdsProgramTypeReported(I)Z
    .registers 5
    .param p1, "programType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    if-gt v0, p1, :cond_f

    const/16 v2, 0x1f

    if-lt v2, p1, :cond_f

    .line 62
    iget v2, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    if-eq v2, p1, :cond_f

    .line 63
    iput p1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    .line 67
    :goto_e
    return v0

    .line 66
    :cond_f
    iput v1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    move v0, v1

    .line 67
    goto :goto_e
.end method

.method public onRdsRadioTextReported(Ljava/lang/String;)Z
    .registers 4
    .param p1, "radioText"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "currentRT":Ljava/lang/String;
    if-eqz p1, :cond_12

    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->radioText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 73
    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->radioText:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    .line 76
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programService:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, "programService"

    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programService:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_10
    iget v1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    if-eqz v1, :cond_26

    .line 137
    const-string v1, "programType"

    iget v2, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v1, "programTypeString"

    iget v2, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    invoke-static {v2}, Lcom/lge/internal/hardware/fmradio/RdsData;->getProgramTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_26
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->radioText:Ljava/lang/String;

    if-eqz v1, :cond_31

    const-string v1, "radioText"

    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->radioText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_31
    const-string v1, "rdsText"

    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/RdsData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programService:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_e
    iget v1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    if-eqz v1, :cond_26

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1d

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_1d
    iget v1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->programType:I

    invoke-static {v1}, Lcom/lge/internal/hardware/fmradio/RdsData;->getProgramTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_26
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->radioText:Ljava/lang/String;

    if-eqz v1, :cond_3a

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_35

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :cond_35
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/RdsData;->radioText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
