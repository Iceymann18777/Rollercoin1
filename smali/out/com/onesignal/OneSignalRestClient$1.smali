.class final Lcom/onesignal/OneSignalRestClient$1;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalRestClient;->put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$jsonBody:Lorg/json/JSONObject;

.field final synthetic val$responseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .registers 4

    .line 67
    iput-object p1, p0, Lcom/onesignal/OneSignalRestClient$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/onesignal/OneSignalRestClient$1;->val$jsonBody:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/onesignal/OneSignalRestClient$1;->val$responseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 69
    iget-object v0, p0, Lcom/onesignal/OneSignalRestClient$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/onesignal/OneSignalRestClient$1;->val$jsonBody:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/onesignal/OneSignalRestClient$1;->val$responseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    const-string v1, "PUT"

    const v4, 0x1d4c0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onesignal/OneSignalRestClient;->access$000(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;)V

    return-void
.end method
