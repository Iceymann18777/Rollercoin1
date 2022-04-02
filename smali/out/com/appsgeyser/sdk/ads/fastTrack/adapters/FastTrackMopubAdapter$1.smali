.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$1;
.super Ljava/lang/Object;
.source "FastTrackMopubAdapter.java"

# interfaces
.implements Lcom/mopub/common/SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFinished()V
    .registers 3

    const-string v0, "fastTrackTag"

    const-string v1, "MoPub SDK onInitializationFinished"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
