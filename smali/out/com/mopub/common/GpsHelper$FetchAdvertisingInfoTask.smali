.class Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;
.super Landroid/os/AsyncTask;
.source "GpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/GpsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchAdvertisingInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private info:Lcom/mopub/common/GpsHelper$AdvertisingInfo;

.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsHelperListenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/common/GpsHelper$GpsHelperListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V
    .registers 4

    .line 99
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 101
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;->mGpsHelperListenerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 95
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 p1, 0x0

    .line 107
    :try_start_1
    iget-object v0, p0, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_c

    return-object p1

    :cond_c
    const-string v1, "getAdvertisingIdInfo"

    .line 112
    invoke-static {p1, v1}, Lcom/mopub/common/factories/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    .line 113
    invoke-static {}, Lcom/mopub/common/GpsHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 114
    invoke-virtual {v1, v2, v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_28

    goto :goto_35

    .line 122
    :catch_28
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Unable to obtain Google AdvertisingIdClient.Info via reflection."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_35
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 95
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 2

    .line 130
    iget-object p1, p0, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;->mGpsHelperListenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/common/GpsHelper$GpsHelperListener;

    if-eqz p1, :cond_d

    .line 132
    invoke-interface {p1}, Lcom/mopub/common/GpsHelper$GpsHelperListener;->onFetchAdInfoCompleted()V

    :cond_d
    return-void
.end method
