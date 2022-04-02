.class public Lcom/mopub/common/ExternalViewabilitySessionManager;
.super Ljava/lang/Object;
.source "ExternalViewabilitySessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;
    }
.end annotation


# instance fields
.field private final mViewabilitySessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/ExternalViewabilitySession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->mViewabilitySessions:Ljava/util/Set;

    .line 94
    new-instance v1, Lcom/mopub/common/AvidViewabilitySession;

    invoke-direct {v1}, Lcom/mopub/common/AvidViewabilitySession;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->mViewabilitySessions:Ljava/util/Set;

    new-instance v1, Lcom/mopub/common/MoatViewabilitySession;

    invoke-direct {v1}, Lcom/mopub/common/MoatViewabilitySession;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-direct {p0, p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 7

    .line 108
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->mViewabilitySessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/ExternalViewabilitySession;

    .line 111
    invoke-interface {v1, p1}, Lcom/mopub/common/ExternalViewabilitySession;->initialize(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "initialize"

    .line 112
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->logEvent(Lcom/mopub/common/ExternalViewabilitySession;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    goto :goto_9

    :cond_20
    return-void
.end method

.method private logEvent(Lcom/mopub/common/ExternalViewabilitySession;Ljava/lang/String;Ljava/lang/Boolean;Z)V
    .registers 8

    .line 271
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 272
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p3, :cond_9

    return-void

    .line 280
    :cond_9
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_12

    const-string p3, ""

    goto :goto_14

    :cond_12
    const-string p3, "failed to "

    .line 281
    :goto_14
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 282
    invoke-interface {p1}, Lcom/mopub/common/ExternalViewabilitySession;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    const/4 p3, 0x2

    aput-object p2, v1, p3

    const-string p2, "%s viewability event: %s%s."

    .line 281
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_37

    .line 284
    sget-object p3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    invoke-static {p3, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_37
    return-void
.end method


# virtual methods
.method public createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 8

    .line 133
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 134
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->mViewabilitySessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/ExternalViewabilitySession;

    const/4 v2, 0x1

    .line 137
    invoke-interface {v1, p1, p2, v2}, Lcom/mopub/common/ExternalViewabilitySession;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "start display session"

    .line 138
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->logEvent(Lcom/mopub/common/ExternalViewabilitySession;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    goto :goto_c

    :cond_23
    return-void
.end method

.method public createVideoSession(Landroid/app/Activity;Landroid/view/View;Lcom/mopub/mobileads/VastVideoConfig;)V
    .registers 9

    .line 173
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 175
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->mViewabilitySessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/ExternalViewabilitySession;

    .line 178
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 179
    instance-of v3, v1, Lcom/mopub/common/AvidViewabilitySession;

    if-eqz v3, :cond_2c

    .line 180
    invoke-virtual {p3}, Lcom/mopub/mobileads/VastVideoConfig;->getAvidJavascriptResources()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_37

    .line 181
    :cond_2c
    instance-of v3, v1, Lcom/mopub/common/MoatViewabilitySession;

    if-eqz v3, :cond_37

    .line 182
    invoke-virtual {p3}, Lcom/mopub/mobileads/VastVideoConfig;->getMoatImpressionPixels()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_37
    :goto_37
    invoke-virtual {p3}, Lcom/mopub/mobileads/VastVideoConfig;->getExternalViewabilityTrackers()Ljava/util/Map;

    move-result-object v3

    .line 185
    invoke-interface {v1, p1, p2, v2, v3}, Lcom/mopub/common/ExternalViewabilitySession;->createVideoSession(Landroid/app/Activity;Landroid/view/View;Ljava/util/Set;Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "start video session"

    .line 187
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->logEvent(Lcom/mopub/common/ExternalViewabilitySession;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    goto :goto_f

    :cond_46
    return-void
.end method

.method public createVideoSession(Landroid/app/Activity;Landroid/view/View;Lcom/mopub/mobileads/VastVideoConfigTwo;)V
    .registers 9

    .line 200
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 201
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 202
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->mViewabilitySessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/ExternalViewabilitySession;

    .line 205
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 206
    instance-of v3, v1, Lcom/mopub/common/AvidViewabilitySession;

    if-eqz v3, :cond_2c

    .line 207
    invoke-virtual {p3}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getAvidJavascriptResources()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_37

    .line 208
    :cond_2c
    instance-of v3, v1, Lcom/mopub/common/MoatViewabilitySession;

    if-eqz v3, :cond_37

    .line 209
    invoke-virtual {p3}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getMoatImpressionPixels()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 213
    :cond_37
    :goto_37
    invoke-virtual {p3}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getExternalViewabilityTrackers()Ljava/util/Map;

    move-result-object v3

    .line 212
    invoke-interface {v1, p1, p2, v2, v3}, Lcom/mopub/common/ExternalViewabilitySession;->createVideoSession(Landroid/app/Activity;Landroid/view/View;Ljava/util/Set;Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "start video session"

    .line 214
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->logEvent(Lcom/mopub/common/ExternalViewabilitySession;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    goto :goto_f

    :cond_46
    return-void
.end method

.method public endDisplaySession()V
    .registers 6

    .line 158
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->mViewabilitySessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/ExternalViewabilitySession;

    .line 159
    invoke-interface {v1}, Lcom/mopub/common/ExternalViewabilitySession;->endDisplaySession()Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "end display session"

    .line 160
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->logEvent(Lcom/mopub/common/ExternalViewabilitySession;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    goto :goto_6

    :cond_1d
    return-void
.end method

.method public endVideoSession()V
    .registers 6

    .line 261
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->mViewabilitySessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/ExternalViewabilitySession;

    .line 262
    invoke-interface {v1}, Lcom/mopub/common/ExternalViewabilitySession;->endVideoSession()Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "end video session"

    .line 263
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->logEvent(Lcom/mopub/common/ExternalViewabilitySession;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    goto :goto_6

    :cond_1d
    return-void
.end method

.method public invalidate()V
    .registers 6

    .line 120
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->mViewabilitySessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/ExternalViewabilitySession;

    .line 121
    invoke-interface {v1}, Lcom/mopub/common/ExternalViewabilitySession;->invalidate()Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "invalidate"

    .line 122
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->logEvent(Lcom/mopub/common/ExternalViewabilitySession;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    goto :goto_6

    :cond_1d
    return-void
.end method

.method public onVideoPrepared(Landroid/view/View;I)V
    .registers 8

    .line 233
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->mViewabilitySessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/ExternalViewabilitySession;

    .line 236
    invoke-interface {v1, p1, p2}, Lcom/mopub/common/ExternalViewabilitySession;->onVideoPrepared(Landroid/view/View;I)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "on video prepared"

    .line 237
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->logEvent(Lcom/mopub/common/ExternalViewabilitySession;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    goto :goto_9

    :cond_20
    return-void
.end method

.method public recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V
    .registers 8

    .line 249
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->mViewabilitySessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/ExternalViewabilitySession;

    .line 252
    invoke-interface {v1, p1, p2}, Lcom/mopub/common/ExternalViewabilitySession;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)Ljava/lang/Boolean;

    move-result-object v2

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record video event ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/mopub/common/ExternalViewabilitySessionManager;->logEvent(Lcom/mopub/common/ExternalViewabilitySession;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    goto :goto_9

    :cond_38
    return-void
.end method

.method public registerVideoObstruction(Landroid/view/View;)V
    .registers 7

    .line 224
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->mViewabilitySessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/ExternalViewabilitySession;

    .line 227
    invoke-interface {v1, p1}, Lcom/mopub/common/ExternalViewabilitySession;->registerVideoObstruction(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "register friendly obstruction"

    .line 228
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->logEvent(Lcom/mopub/common/ExternalViewabilitySession;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    goto :goto_9

    :cond_20
    return-void
.end method

.method public startDeferredDisplaySession(Landroid/app/Activity;)V
    .registers 7

    .line 148
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->mViewabilitySessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/ExternalViewabilitySession;

    .line 149
    invoke-interface {v1, p1}, Lcom/mopub/common/ExternalViewabilitySession;->startDeferredDisplaySession(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "record deferred session"

    .line 150
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->logEvent(Lcom/mopub/common/ExternalViewabilitySession;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    goto :goto_6

    :cond_1d
    return-void
.end method
