.class Lcom/onesignal/OneSignalRestClientWrapper;
.super Ljava/lang/Object;
.source "OneSignalRestClientWrapper.java"

# interfaces
.implements Lcom/onesignal/OneSignalAPIClient;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .registers 5

    .line 26
    new-instance v0, Lcom/onesignal/OneSignalRestClientWrapper$2;

    invoke-direct {v0, p0, p3}, Lcom/onesignal/OneSignalRestClientWrapper$2;-><init>(Lcom/onesignal/OneSignalRestClientWrapper;Lcom/onesignal/OneSignalApiResponseHandler;)V

    invoke-static {p1, p2, v0}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    return-void
.end method
