.class Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;
.super Landroid/os/AsyncTask;
.source "VZWAggregation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/aggregation/VZWAggregation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mainURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;


# direct methods
.method private constructor <init>(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)V
    .registers 3

    .prologue
    .line 373
    iput-object p1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 375
    const-string v0, "www.verizon.com"

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->mainURL:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/wifi/impl/aggregation/VZWAggregation;Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;)V
    .registers 3

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;-><init>(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 445
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/lge/wifi/impl/aggregation/HttpConnectionHelper;->httpRequestGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "parentTag"    # Ljava/lang/String;
    .param p3, "parentEndTag"    # Ljava/lang/String;
    .param p4, "targetTag"    # Ljava/lang/String;
    .param p5, "targetEndTag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 391
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 392
    .local v2, "parentStartIndex":I
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 394
    .local v1, "parentEndIndex":I
    if-eqz p2, :cond_12

    if-eqz p3, :cond_12

    if-eqz p4, :cond_12

    if-nez p5, :cond_13

    .line 410
    :cond_12
    :goto_12
    return-object v3

    .line 397
    :cond_13
    if-eq v2, v7, :cond_12

    if-eq v1, v7, :cond_12

    .line 400
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "parentContent":Ljava/lang/String;
    invoke-virtual {v0, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 403
    .local v5, "targetStartIndex":I
    invoke-virtual {v0, p5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 405
    .local v4, "targetEndIndex":I
    if-eq v5, v7, :cond_12

    if-eq v4, v7, :cond_12

    .line 408
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "resultContent":Ljava/lang/String;
    goto :goto_12
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 15
    .param p1, "resultpage"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 507
    const-string v0, "WiFiAggregation"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v6, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    const-string v2, "<Redirect>"

    const-string v3, "</Redirect>"

    const-string v4, "<LoginURL>"

    const-string v5, "</LoginURL>"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->getTagContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$9(Lcom/lge/wifi/impl/aggregation/VZWAggregation;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->redirectUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$10(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    .line 513
    const-string v0, "WiFiAggregation"

    const-string v1, "Got the response from server but not redirect url"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;
    invoke-static {v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$2(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    move-result-object v0

    iput-boolean v12, v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->isComplete:Z

    .line 607
    :goto_34
    return-void

    .line 524
    :cond_35
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->redirectUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$10(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 526
    const-string v0, "WiFiAggregation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Sub Thread] Step2 - Something wrong.. Login informations are sent to URL:["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->redirectUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$10(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_63
    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    sget-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_deviceType_Name:Ljava/lang/String;

    aput-object v0, v3, v7

    sget-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_deviceModel_Name:Ljava/lang/String;

    aput-object v0, v3, v12

    sget-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_stationId_Name:Ljava/lang/String;

    aput-object v0, v3, v9

    .line 530
    sget-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_userName_Name:Ljava/lang/String;

    aput-object v0, v3, v10

    const/4 v0, 0x4

    sget-object v1, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_password_Name:Ljava/lang/String;

    aput-object v1, v3, v0

    .line 531
    .local v3, "parameterName":[Ljava/lang/String;
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    sget-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_deviceType_Value:Ljava/lang/String;

    aput-object v0, v4, v7

    sget-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_deviceModel_Value:Ljava/lang/String;

    aput-object v0, v4, v12

    sget-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_stationId_Value:Ljava/lang/String;

    aput-object v0, v4, v9

    .line 532
    sget-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_userName_Value:Ljava/lang/String;

    aput-object v0, v4, v10

    const/4 v0, 0x4

    sget-object v1, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_password_Value:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 535
    .local v4, "parameterValue":[Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->redirectUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$10(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Ljava/lang/String;

    move-result-object v0

    move v1, v12

    move-object v2, v8

    move-object v5, v8

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lcom/lge/wifi/impl/aggregation/HttpConnectionHelper;->httpRequest(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljavax/net/ssl/HostnameVerifier;)Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$11(Lcom/lge/wifi/impl/aggregation/VZWAggregation;Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;)V

    .line 538
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->result:Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;
    invoke-static {v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$12(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;

    move-result-object v0

    iget v0, v0, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    sget v1, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_NORMAL:I

    if-eq v0, v1, :cond_db

    .line 540
    const-string v0, "WiFiAggregation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Sub Thread] Step2 - Can\'t connect URL:["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->redirectUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$10(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v0, "FAIL"

    const-string v1, "CAN\'T CONNET WEB PAGE"

    invoke-virtual {p0, v0, v1, v8, v8}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_34

    .line 545
    :cond_db
    const-string v0, "WiFiAggregation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Sub Thread] Step2 - connected URL:["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->redirectUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$10(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v0, "WiFiAggregation"

    iget-object v1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->result:Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;
    invoke-static {v1}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$12(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->responsePage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->result:Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;
    invoke-static {v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$12(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;

    move-result-object v0

    iget-object v6, v0, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->responsePage:Ljava/lang/String;

    const-string v7, "<AuthenticationReply>"

    const-string v8, "</AuthenticationReply>"

    const-string v9, "<ResponseCode>"

    const-string v10, "</ResponseCode>"

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->getTagContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 555
    .local v11, "resultCode":Ljava/lang/String;
    if-nez v11, :cond_12c

    .line 557
    const-string v0, "FAIL"

    const-string v1, "Invalid Response"

    const-string v2, " "

    const-string v5, " "

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_34

    .line 561
    :cond_12c
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 563
    const-string v0, "SUCCESS"

    const-string v1, " "

    const-string v2, " "

    const-string v5, " "

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;
    invoke-static {v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$2(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    move-result-object v0

    iput-boolean v12, v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->isComplete:Z

    .line 606
    :goto_14b
    const-string v0, "WiFiAggregation"

    const-string v1, "[Sub Thread] Now exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 566
    :cond_154
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 569
    const-string v0, "FAIL"

    const-string v1, "Login failed (Access REJECT)"

    const-string v2, " "

    const-string v5, " "

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14b

    .line 571
    :cond_16c
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "102"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 574
    const-string v0, "FAIL"

    const-string v1, "RADIUS server error/timeout"

    const-string v2, " "

    const-string v5, " "

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14b

    .line 576
    :cond_184
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 579
    const-string v0, "FAIL"

    const-string v1, "Network Administrator Error: Does not have RADIUS enabled"

    const-string v2, " "

    const-string v5, " "

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14b

    .line 581
    :cond_19c
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "151"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 584
    const-string v0, "FAIL"

    const-string v1, "Login aborted"

    const-string v2, " "

    const-string v5, " "

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14b

    .line 586
    :cond_1b4
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 589
    const-string v0, "FAIL"

    const-string v1, "Proxy detection/repeat operation"

    const-string v2, " "

    const-string v5, " "

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14b

    .line 591
    :cond_1cc
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "201"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e5

    .line 594
    const-string v0, "FAIL"

    const-string v1, "Authentication pending"

    const-string v2, " "

    const-string v5, " "

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14b

    .line 596
    :cond_1e5
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "255"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fe

    .line 599
    const-string v0, "FAIL"

    const-string v1, "Access gateway internal error"

    const-string v2, " "

    const-string v5, " "

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14b

    .line 603
    :cond_1fe
    const-string v0, "FAIL"

    const-string v1, "Not defined response code"

    const-string v2, "A-GROUP"

    const-string v5, "SEOUL"

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14b
.end method

.method public sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "bw_user_group"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;

    .prologue
    .line 415
    const-string v1, "WiFiAggregation"

    const-string v2, "Send Result Intent [com.lge.wifi.impl.aggregation.end]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-nez p1, :cond_11

    .line 419
    const-string v1, "WiFiAggregation"

    const-string v2, "Send Result is NULL !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local p1    # "result":Ljava/lang/String;
    .end local p2    # "description":Ljava/lang/String;
    .end local p3    # "bw_user_group":Ljava/lang/String;
    .end local p4    # "location":Ljava/lang/String;
    :goto_10
    return-void

    .line 424
    .restart local p1    # "result":Ljava/lang/String;
    .restart local p2    # "description":Ljava/lang/String;
    .restart local p3    # "bw_user_group":Ljava/lang/String;
    .restart local p4    # "location":Ljava/lang/String;
    :cond_11
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, " aggregation_result "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_84

    move-object v1, p1

    :goto_1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, " aggregation_description "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_87

    move-object v1, p2

    :goto_34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, " aggregation_bw_user_group "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_8a

    move-object v1, p3

    :goto_4b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, " aggregation_location "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_8d

    move-object v1, p4

    :goto_62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v1, "FAIL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->retryCnt:I
    invoke-static {}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$8()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_90

    .line 431
    const-string v1, "WiFiAggregation"

    const-string v2, "Ignore fail intent. Only last try just send intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 424
    :cond_84
    const-string v1, " "

    goto :goto_1d

    .line 425
    :cond_87
    const-string v1, " "

    goto :goto_34

    .line 426
    :cond_8a
    const-string v1, " "

    goto :goto_4b

    .line 427
    :cond_8d
    const-string v1, " "

    goto :goto_62

    .line 435
    :cond_90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wifi.impl.aggregation.end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "aggregation_result"

    if-eqz p1, :cond_c0

    .end local p1    # "result":Ljava/lang/String;
    :goto_9b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v1, "aggregation_description"

    if-eqz p2, :cond_c3

    .end local p2    # "description":Ljava/lang/String;
    :goto_a2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v1, "aggregation_bw_user_group"

    if-eqz p3, :cond_c6

    .end local p3    # "bw_user_group":Ljava/lang/String;
    :goto_a9
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v1, "aggregation_location"

    if-eqz p4, :cond_c9

    .end local p4    # "location":Ljava/lang/String;
    :goto_b0
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    iget-object v1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$4(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_10

    .line 436
    .restart local p1    # "result":Ljava/lang/String;
    .restart local p2    # "description":Ljava/lang/String;
    .restart local p3    # "bw_user_group":Ljava/lang/String;
    .restart local p4    # "location":Ljava/lang/String;
    :cond_c0
    const-string p1, " "

    goto :goto_9b

    .line 437
    .end local p1    # "result":Ljava/lang/String;
    :cond_c3
    const-string p2, " "

    goto :goto_a2

    .line 438
    .end local p2    # "description":Ljava/lang/String;
    :cond_c6
    const-string p3, " "

    goto :goto_a9

    .line 439
    .end local p3    # "bw_user_group":Ljava/lang/String;
    :cond_c9
    const-string p4, " "

    goto :goto_b0
.end method
