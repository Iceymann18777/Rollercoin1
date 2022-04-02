.class Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$2;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$2;->this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestDone(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 162
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 163
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 165
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    :goto_18
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_27

    .line 173
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    .line 174
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 178
    :cond_27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_3b

    :catch_35
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, ""

    .line 185
    :goto_3b
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$2;->this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;

    iget-object p2, p2, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$2;->this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;

    iget-object p3, p3, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;->val$resultCallback:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$200(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
