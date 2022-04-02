.class Lcom/mopub/common/privacy/MoPubIdentifier$RefreshAdvertisingInfoAsyncTask;
.super Landroid/os/AsyncTask;
.source "MoPubIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/MoPubIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshAdvertisingInfoAsyncTask"
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
.field final synthetic this$0:Lcom/mopub/common/privacy/MoPubIdentifier;


# direct methods
.method private constructor <init>(Lcom/mopub/common/privacy/MoPubIdentifier;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier$RefreshAdvertisingInfoAsyncTask;->this$0:Lcom/mopub/common/privacy/MoPubIdentifier;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/privacy/MoPubIdentifier;Lcom/mopub/common/privacy/MoPubIdentifier$1;)V
    .registers 3

    .line 254
    invoke-direct {p0, p1}, Lcom/mopub/common/privacy/MoPubIdentifier$RefreshAdvertisingInfoAsyncTask;-><init>(Lcom/mopub/common/privacy/MoPubIdentifier;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 254
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mopub/common/privacy/MoPubIdentifier$RefreshAdvertisingInfoAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    .line 258
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier$RefreshAdvertisingInfoAsyncTask;->this$0:Lcom/mopub/common/privacy/MoPubIdentifier;

    invoke-virtual {p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->refreshAdvertisingInfoBackgroundThread()V

    .line 259
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier$RefreshAdvertisingInfoAsyncTask;->this$0:Lcom/mopub/common/privacy/MoPubIdentifier;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->access$102(Lcom/mopub/common/privacy/MoPubIdentifier;Z)Z

    const/4 p1, 0x0

    return-object p1
.end method
