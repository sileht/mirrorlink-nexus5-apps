.class public Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "LgePhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static sCachedLocale:Ljava/util/Locale;

.field private static sFormatType:I


# instance fields
.field private mDeletingBackward:Z

.field private mDeletingHyphen:Z

.field private mFormatting:Z

.field private mHyphenStart:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->sCachedLocale:Ljava/util/Locale;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->sCachedLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 53
    :cond_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->sCachedLocale:Ljava/util/Locale;

    .line 55
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 56
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v0

    sput v0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->sFormatType:I

    .line 61
    :cond_25
    :goto_25
    return-void

    .line 59
    :cond_26
    sget-object v0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->sCachedLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v0

    sput v0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->sFormatType:I

    goto :goto_25
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mFormatting:Z

    if-nez v0, :cond_2f

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mFormatting:Z

    .line 69
    iget-boolean v0, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mDeletingHyphen:Z

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mHyphenStart:I

    if-lez v0, :cond_27

    .line 70
    iget-boolean v0, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mDeletingBackward:Z

    if-eqz v0, :cond_31

    .line 71
    iget v0, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mHyphenStart:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 72
    iget v0, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mHyphenStart:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mHyphenStart:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 79
    :cond_27
    :goto_27
    sget v0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->sFormatType:I

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mFormatting:Z
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_43

    .line 83
    :cond_2f
    monitor-exit p0

    return-void

    .line 74
    :cond_31
    :try_start_31
    iget v0, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mHyphenStart:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 75
    iget v0, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mHyphenStart:I

    iget v1, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mHyphenStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_43

    goto :goto_27

    .line 65
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 87
    iget-boolean v2, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mFormatting:Z

    if-nez v2, :cond_2c

    .line 89
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 90
    .local v1, "selStart":I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 91
    .local v0, "selEnd":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v4, :cond_30

    .line 92
    if-ne p3, v4, :cond_30

    .line 93
    if-nez p4, :cond_30

    .line 94
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_30

    .line 95
    if-ne v1, v0, :cond_30

    .line 96
    iput-boolean v4, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mDeletingHyphen:Z

    .line 97
    iput p2, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mHyphenStart:I

    .line 99
    add-int/lit8 v2, p2, 0x1

    if-ne v1, v2, :cond_2d

    .line 100
    iput-boolean v4, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mDeletingBackward:Z

    .line 108
    .end local v0    # "selEnd":I
    .end local v1    # "selStart":I
    :cond_2c
    :goto_2c
    return-void

    .line 102
    .restart local v0    # "selEnd":I
    .restart local v1    # "selStart":I
    :cond_2d
    iput-boolean v5, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mDeletingBackward:Z

    goto :goto_2c

    .line 105
    :cond_30
    iput-boolean v5, p0, Lcom/lge/telephony/LgePhoneNumberFormattingTextWatcher;->mDeletingHyphen:Z

    goto :goto_2c
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 112
    return-void
.end method
