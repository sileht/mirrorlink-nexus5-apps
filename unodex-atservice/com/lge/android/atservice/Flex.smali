.class public Lcom/lge/android/atservice/Flex;
.super Ljava/lang/Object;
.source "Flex.java"


# static fields
.field public static final FLEX_AUTOPROFILE:Ljava/lang/String; = "FLEX_AUTOPROFILE"

.field public static final FLEX_COUNTRY_CODE:Ljava/lang/String; = "FLEX_COUNTRY_CODE"

.field public static final FLEX_MCC_CODE:Ljava/lang/String; = "FLEX_MCC_CODE"

.field public static final FLEX_MNC_CODE:Ljava/lang/String; = "FLEX_MNC_CODE"

.field public static final FLEX_OPERATOR_CODE:Ljava/lang/String; = "FLEX_OPERATOR_CODE"

.field public static final FLEX_REGION_CODE:Ljava/lang/String; = "FLEX_REGION_CODE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string/jumbo v0, "FLEX_AUTOPROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 50
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 51
    :cond_12
    const-string/jumbo v0, "FLEX_OPERATOR_CODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 52
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "OPERATOR_CODE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 53
    :cond_24
    const-string/jumbo v0, "FLEX_COUNTRY_CODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 54
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "OPERATOR_CODE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 55
    :cond_36
    const-string/jumbo v0, "FLEX_MCC_CODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 56
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "MCC_CODE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 57
    :cond_48
    const-string/jumbo v0, "FLEX_MNC_CODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 58
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "MNC_CODE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 59
    :cond_5a
    const-string/jumbo v0, "FLEX_REGION_CODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 60
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "REGION_CODE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 62
    :cond_6c
    const-string/jumbo v0, " "

    return-object v0
.end method
