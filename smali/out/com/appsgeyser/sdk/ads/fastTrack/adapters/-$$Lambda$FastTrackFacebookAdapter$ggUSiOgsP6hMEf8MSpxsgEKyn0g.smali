.class public final synthetic Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackFacebookAdapter$ggUSiOgsP6hMEf8MSpxsgEKyn0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

.field public final synthetic f$1:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackFacebookAdapter$ggUSiOgsP6hMEf8MSpxsgEKyn0g;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackFacebookAdapter$ggUSiOgsP6hMEf8MSpxsgEKyn0g;->f$1:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackFacebookAdapter$ggUSiOgsP6hMEf8MSpxsgEKyn0g;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackFacebookAdapter$ggUSiOgsP6hMEf8MSpxsgEKyn0g;->f$1:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->lambda$showFullscreen$0$FastTrackFacebookAdapter(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    return-void
.end method
