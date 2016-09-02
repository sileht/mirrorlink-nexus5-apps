.class Lcom/lge/android/atservice/MIDResView$2;
.super Ljava/lang/Object;
.source "MIDResView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/MIDResView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/MIDResView;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/MIDResView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/MIDResView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lge/android/atservice/MIDResView$2;->this$0:Lcom/lge/android/atservice/MIDResView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 109
    iget-object v8, p0, Lcom/lge/android/atservice/MIDResView$2;->this$0:Lcom/lge/android/atservice/MIDResView;

    invoke-static {v8}, Lcom/lge/android/atservice/MIDResView;->-get0(Lcom/lge/android/atservice/MIDResView;)Lcom/lge/android/atservice/client/LGATCMDClient;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/16 v10, 0xfac

    invoke-virtual {v8, v10, v9}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v2

    .line 110
    .local v2, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    if-eqz v2, :cond_1c3

    .line 111
    const-string/jumbo v8, "MIDResView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "response result :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->result:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-array v7, v13, [C

    .line 114
    .local v7, "tempHwRev":[C
    const/4 v0, 0x0

    .line 116
    .local v0, "HW_Ver":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    if-ge v1, v13, :cond_6b

    .line 117
    iget-object v8, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->data:[B

    aget-byte v8, v8, v1

    int-to-char v8, v8

    aput-char v8, v7, v1

    .line 118
    const-string/jumbo v8, "MIDResView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tempHwRev["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-char v10, v7, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 122
    :cond_6b
    iget v8, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->result:I

    if-nez v8, :cond_144

    aget-char v8, v7, v11

    const/16 v9, 0x30

    if-ne v8, v9, :cond_144

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-char v9, v7, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "HW_Ver":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Rev."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v8, p0, Lcom/lge/android/atservice/MIDResView$2;->this$0:Lcom/lge/android/atservice/MIDResView;

    const-string/jumbo v9, "hardware_version"

    invoke-virtual {v8, v9}, Lcom/lge/android/atservice/MIDResView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    .end local v0    # "HW_Ver":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v7    # "tempHwRev":[C
    :goto_af
    iget-object v8, p0, Lcom/lge/android/atservice/MIDResView$2;->this$0:Lcom/lge/android/atservice/MIDResView;

    invoke-static {v8}, Lcom/lge/android/atservice/MIDResView;->-get0(Lcom/lge/android/atservice/MIDResView;)Lcom/lge/android/atservice/client/LGATCMDClient;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/16 v10, 0xfab

    invoke-virtual {v8, v10, v9}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v2

    .line 145
    const/4 v5, 0x0

    .line 146
    .local v5, "temp":Ljava/lang/String;
    if-eqz v2, :cond_1d4

    .line 147
    new-instance v6, Ljava/lang/String;

    iget-object v8, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->data:[B

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    .line 148
    .local v6, "tempFactoryVersion":Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v8, "+"

    invoke-direct {v4, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "temp":Ljava/lang/String;
    const-string/jumbo v8, "true"

    const-string/jumbo v9, "ro.lge.one_binary_support"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f2

    .line 152
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 155
    :cond_f2
    iget-object v8, p0, Lcom/lge/android/atservice/MIDResView$2;->this$0:Lcom/lge/android/atservice/MIDResView;

    const-string/jumbo v9, "software_version"

    invoke-virtual {v8, v9}, Lcom/lge/android/atservice/MIDResView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "temp":Ljava/lang/String;
    .end local v6    # "tempFactoryVersion":Ljava/lang/String;
    :goto_fe
    iget-object v8, p0, Lcom/lge/android/atservice/MIDResView$2;->this$0:Lcom/lge/android/atservice/MIDResView;

    invoke-static {v8}, Lcom/lge/android/atservice/MIDResView;->-get0(Lcom/lge/android/atservice/MIDResView;)Lcom/lge/android/atservice/client/LGATCMDClient;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/16 v10, 0xfaa

    invoke-virtual {v8, v10, v9}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v2

    .line 162
    const/4 v3, 0x0

    .line 163
    .local v3, "serial":Ljava/lang/String;
    if-eqz v2, :cond_1e5

    .line 164
    const-string/jumbo v8, "MIDResView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "response result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->result:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v3, Ljava/lang/String;

    .end local v3    # "serial":Ljava/lang/String;
    iget-object v8, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->data:[B

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    .line 166
    .local v3, "serial":Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/android/atservice/MIDResView$2;->this$0:Lcom/lge/android/atservice/MIDResView;

    const-string/jumbo v9, "serial_no"

    invoke-virtual {v8, v9}, Lcom/lge/android/atservice/MIDResView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    .end local v3    # "serial":Ljava/lang/String;
    :goto_143
    return-void

    .line 127
    .local v0, "HW_Ver":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v7    # "tempHwRev":[C
    :cond_144
    iget v8, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->result:I

    if-nez v8, :cond_17f

    aget-char v8, v7, v11

    const/16 v9, 0x31

    if-ne v8, v9, :cond_17f

    .line 128
    iget-object v8, p0, Lcom/lge/android/atservice/MIDResView$2;->this$0:Lcom/lge/android/atservice/MIDResView;

    const-string/jumbo v9, "hardware_version"

    invoke-virtual {v8, v9}, Lcom/lge/android/atservice/MIDResView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Rev"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-char v10, v7, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-char v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-char v10, v7, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_af

    .line 130
    :cond_17f
    iget v8, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->result:I

    if-nez v8, :cond_1bf

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-char v9, v7, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "HW_Ver":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Rev."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_1b1
    iget-object v8, p0, Lcom/lge/android/atservice/MIDResView$2;->this$0:Lcom/lge/android/atservice/MIDResView;

    const-string/jumbo v9, "hardware_version"

    invoke-virtual {v8, v9}, Lcom/lge/android/atservice/MIDResView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_af

    .line 136
    .local v0, "HW_Ver":Ljava/lang/String;
    :cond_1bf
    const-string/jumbo v0, "Rev.B"

    .local v0, "HW_Ver":Ljava/lang/String;
    goto :goto_1b1

    .line 141
    .end local v0    # "HW_Ver":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v7    # "tempHwRev":[C
    :cond_1c3
    iget-object v8, p0, Lcom/lge/android/atservice/MIDResView$2;->this$0:Lcom/lge/android/atservice/MIDResView;

    const-string/jumbo v9, "hardware_version"

    invoke-virtual {v8, v9}, Lcom/lge/android/atservice/MIDResView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const-string/jumbo v9, "UNAVAILABLE"

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_af

    .line 157
    .local v5, "temp":Ljava/lang/String;
    :cond_1d4
    iget-object v8, p0, Lcom/lge/android/atservice/MIDResView$2;->this$0:Lcom/lge/android/atservice/MIDResView;

    const-string/jumbo v9, "software_version"

    invoke-virtual {v8, v9}, Lcom/lge/android/atservice/MIDResView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const-string/jumbo v9, "UNAVAILABLE"

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_fe

    .line 168
    .end local v5    # "temp":Ljava/lang/String;
    .local v3, "serial":Ljava/lang/String;
    :cond_1e5
    const-string/jumbo v8, "MIDResView"

    const-string/jumbo v9, "not Work!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_143
.end method
