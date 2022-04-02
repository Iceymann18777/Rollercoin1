.class public Lcom/mopub/network/PlayServicesUrlRewriter;
.super Ljava/lang/Object;
.source "PlayServicesUrlRewriter.java"

# interfaces
.implements Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;


# static fields
.field public static final DO_NOT_TRACK_TEMPLATE:Ljava/lang/String; = "mp_tmpl_do_not_track"

.field public static final MOPUB_ID_TEMPLATE:Ljava/lang/String; = "mp_tmpl_mopub_id"

.field public static final UDID_TEMPLATE:Ljava/lang/String; = "mp_tmpl_advertising_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "mp_tmpl_advertising_id"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "mp_tmpl_do_not_track"

    if-nez v1, :cond_11

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    return-object p1

    .line 33
    :cond_11
    invoke-static {}, Lcom/mopub/common/ClientMetadata;->getInstance()Lcom/mopub/common/ClientMetadata;

    move-result-object v1

    if-nez v1, :cond_18

    return-object p1

    .line 37
    :cond_18
    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v1

    .line 40
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mopub/common/privacy/AdvertisingId;->getIdWithPrefix(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {v1}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "1"

    goto :goto_3b

    :cond_39
    const-string v0, "0"

    :goto_3b
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {v1, v0}, Lcom/mopub/common/privacy/AdvertisingId;->getIdentifier(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp_tmpl_mopub_id"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
