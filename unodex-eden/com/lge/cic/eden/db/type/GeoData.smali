.class public Lcom/lge/cic/eden/db/type/GeoData;
.super Ljava/lang/Object;
.source "GeoData.java"


# instance fields
.field public adminArea:Ljava/lang/String;

.field public adminAreaFreq:I

.field public countryName:Ljava/lang/String;

.field public countryNameFreq:I

.field public geoLocale:Ljava/lang/String;

.field public geoLocaleFreq:I

.field public locality:Ljava/lang/String;

.field public localityFreq:I

.field public thoroughfare:Ljava/lang/String;

.field public thoroughfareFreq:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    .line 19
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/cic/eden/db/type/GeoData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/location/Address;)V
    .registers 3
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 38
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocale:Ljava/lang/String;

    .line 41
    :goto_f
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 42
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    .line 46
    :goto_1b
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 47
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    .line 50
    :goto_27
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 51
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    .line 54
    :goto_33
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 55
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    .line 58
    :goto_3f
    return-void

    .line 40
    :cond_40
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocale:Ljava/lang/String;

    goto :goto_f

    .line 44
    :cond_45
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    goto :goto_1b

    .line 49
    :cond_4a
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    goto :goto_27

    .line 53
    :cond_4f
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    goto :goto_33

    .line 57
    :cond_54
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    goto :goto_3f
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "geoLocale"    # Ljava/lang/String;
    .param p2, "countryName"    # Ljava/lang/String;
    .param p3, "adminArea"    # Ljava/lang/String;
    .param p4, "locality"    # Ljava/lang/String;
    .param p5, "thoroughfare"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocale:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    .line 29
    iput v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocaleFreq:I

    .line 30
    iput v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->countryNameFreq:I

    .line 31
    iput v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->adminAreaFreq:I

    .line 32
    iput v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->localityFreq:I

    .line 33
    iput v0, p0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfareFreq:I

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p0, p1, :cond_5

    .line 150
    :cond_4
    :goto_4
    return v1

    .line 93
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 94
    goto :goto_4

    .line 96
    :cond_9
    instance-of v3, p1, Lcom/lge/cic/eden/db/type/GeoData;

    if-nez v3, :cond_f

    move v1, v2

    .line 97
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 99
    check-cast v0, Lcom/lge/cic/eden/db/type/GeoData;

    .line 100
    .local v0, "other":Lcom/lge/cic/eden/db/type/GeoData;
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    if-nez v3, :cond_1c

    .line 101
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    if-eqz v3, :cond_28

    move v1, v2

    .line 102
    goto :goto_4

    .line 104
    :cond_1c
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    move v1, v2

    .line 105
    goto :goto_4

    .line 107
    :cond_28
    iget v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->adminAreaFreq:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/GeoData;->adminAreaFreq:I

    if-eq v3, v4, :cond_30

    move v1, v2

    .line 108
    goto :goto_4

    .line 110
    :cond_30
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    if-nez v3, :cond_3a

    .line 111
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    if-eqz v3, :cond_46

    move v1, v2

    .line 112
    goto :goto_4

    .line 114
    :cond_3a
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    move v1, v2

    .line 115
    goto :goto_4

    .line 117
    :cond_46
    iget v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->countryNameFreq:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/GeoData;->countryNameFreq:I

    if-eq v3, v4, :cond_4e

    move v1, v2

    .line 118
    goto :goto_4

    .line 120
    :cond_4e
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocale:Ljava/lang/String;

    if-nez v3, :cond_58

    .line 121
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocale:Ljava/lang/String;

    if-eqz v3, :cond_64

    move v1, v2

    .line 122
    goto :goto_4

    .line 124
    :cond_58
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocale:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    move v1, v2

    .line 125
    goto :goto_4

    .line 127
    :cond_64
    iget v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocaleFreq:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocaleFreq:I

    if-eq v3, v4, :cond_6c

    move v1, v2

    .line 128
    goto :goto_4

    .line 130
    :cond_6c
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    if-nez v3, :cond_76

    .line 131
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    if-eqz v3, :cond_82

    move v1, v2

    .line 132
    goto :goto_4

    .line 134
    :cond_76
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    move v1, v2

    .line 135
    goto :goto_4

    .line 137
    :cond_82
    iget v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->localityFreq:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/GeoData;->localityFreq:I

    if-eq v3, v4, :cond_8b

    move v1, v2

    .line 138
    goto/16 :goto_4

    .line 140
    :cond_8b
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    if-nez v3, :cond_96

    .line 141
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    if-eqz v3, :cond_a3

    move v1, v2

    .line 142
    goto/16 :goto_4

    .line 144
    :cond_96
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a3

    move v1, v2

    .line 145
    goto/16 :goto_4

    .line 147
    :cond_a3
    iget v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfareFreq:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfareFreq:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 148
    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 65
    const/16 v0, 0x1f

    .line 66
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 68
    .local v1, "result":I
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    if-nez v2, :cond_4d

    move v2, v3

    .line 67
    :goto_9
    add-int/lit8 v1, v2, 0x1f

    .line 69
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/lge/cic/eden/db/type/GeoData;->adminAreaFreq:I

    add-int v1, v2, v4

    .line 70
    mul-int/lit8 v4, v1, 0x1f

    .line 71
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    if-nez v2, :cond_54

    move v2, v3

    .line 70
    :goto_18
    add-int v1, v4, v2

    .line 72
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/lge/cic/eden/db/type/GeoData;->countryNameFreq:I

    add-int v1, v2, v4

    .line 73
    mul-int/lit8 v4, v1, 0x1f

    .line 74
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocale:Ljava/lang/String;

    if-nez v2, :cond_5b

    move v2, v3

    .line 73
    :goto_27
    add-int v1, v4, v2

    .line 75
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocaleFreq:I

    add-int v1, v2, v4

    .line 76
    mul-int/lit8 v4, v1, 0x1f

    .line 77
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    if-nez v2, :cond_62

    move v2, v3

    .line 76
    :goto_36
    add-int v1, v4, v2

    .line 78
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/lge/cic/eden/db/type/GeoData;->localityFreq:I

    add-int v1, v2, v4

    .line 79
    mul-int/lit8 v2, v1, 0x1f

    .line 80
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    if-nez v4, :cond_69

    .line 79
    :goto_44
    add-int v1, v2, v3

    .line 81
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfareFreq:I

    add-int v1, v2, v3

    .line 82
    return v1

    .line 68
    :cond_4d
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/GeoData;->adminArea:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    .line 71
    :cond_54
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/GeoData;->countryName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_18

    .line 74
    :cond_5b
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/GeoData;->geoLocale:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_27

    .line 77
    :cond_62
    iget-object v2, p0, Lcom/lge/cic/eden/db/type/GeoData;->locality:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_36

    .line 80
    :cond_69
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/GeoData;->thoroughfare:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_44
.end method
