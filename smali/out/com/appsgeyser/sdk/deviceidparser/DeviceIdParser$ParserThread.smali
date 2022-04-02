.class Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;
.super Landroid/os/AsyncTask;
.source "DeviceIdParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParserThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final listener:Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;

.field final synthetic this$0:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;)V
    .registers 4

    .line 77
    iput-object p1, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 78
    iput-object p3, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->listener:Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;

    .line 79
    iput-object p2, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    invoke-static {v0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->access$000(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->clear()V

    .line 85
    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-static {v0, v2}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->access$100(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1d

    sget-object p1, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->TRUE:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    goto :goto_1f

    :cond_1d
    sget-object p1, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->FALSE:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    .line 89
    :goto_1f
    iget-object v1, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    invoke-static {v1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->access$000(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->setLimitAdTrackingEnabled(Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;)V

    .line 90
    iget-object p1, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    invoke-static {p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->access$000(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->setAdvId(Ljava/lang/String;)V

    goto :goto_5c

    .line 92
    :cond_36
    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    invoke-static {v0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->access$000(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object v0

    sget-object v2, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->UNKNOWN:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    invoke-virtual {v0, v2}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->setLimitAdTrackingEnabled(Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;)V

    .line 93
    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    invoke-static {v0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->access$000(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->setAdvId(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    invoke-static {v0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->access$000(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    aget-object p1, p1, v1

    invoke-static {v2, p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->access$200(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->setaId(Ljava/lang/String;)V

    .line 97
    :goto_5c
    iget-object p1, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->this$0:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    invoke-static {p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->access$300(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 73
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->doInBackground([Landroid/content/Context;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->listener:Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;

    if-eqz v0, :cond_9

    .line 103
    iget-object v1, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;->onDeviceIdParametersObtained(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V

    :cond_9
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 73
    check-cast p1, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->onPostExecute(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V

    return-void
.end method
