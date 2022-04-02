.class Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->getBase64FromImageUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

.field final synthetic val$resultCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;)V
    .registers 3

    .line 595
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;->val$resultCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestDone(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    const-string p1, ""

    .line 603
    :try_start_2
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .line 604
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 606
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 608
    :goto_10
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 609
    invoke-virtual {p3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_10

    .line 611
    :cond_1b
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 613
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 615
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 616
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 618
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "data:image/png;base64,"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    .line 619
    invoke-static {v0, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3e} :catch_3f

    goto :goto_44

    :catch_3f
    move-exception p2

    .line 622
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    move-object p2, p1

    :goto_44
    const-string p3, "\n"

    .line 625
    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\"

    const-string p3, "\\\\"

    .line 626
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\'"

    const-string p3, "\\\'"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 627
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$100(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p2

    new-instance p3, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14$1;

    invoke-direct {p3, p0, p1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14$1;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
