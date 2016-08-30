.class public Lcom/lge/telephony/utils/AreaCode;
.super Ljava/lang/Object;
.source "AreaCode.java"


# instance fields
.field private areacode:Ljava/lang/String;

.field private cityname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "areacode"    # Ljava/lang/String;
    .param p2, "cityname"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/lge/telephony/utils/AreaCode;->areacode:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/lge/telephony/utils/AreaCode;->cityname:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getAreacode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/lge/telephony/utils/AreaCode;->areacode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/telephony/utils/AreaCode;->cityname:Ljava/lang/String;

    return-object v0
.end method
