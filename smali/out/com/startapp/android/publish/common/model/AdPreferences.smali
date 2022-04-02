.class public Lcom/startapp/android/publish/common/model/AdPreferences;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
    }
.end annotation


# static fields
.field public static final TYPE_APP_WALL:Ljava/lang/String; = "APP_WALL"

.field public static final TYPE_BANNER:Ljava/lang/String; = "BANNER"

.field public static final TYPE_INAPP_EXIT:Ljava/lang/String; = "INAPP_EXIT"

.field public static final TYPE_SCRINGO_TOOLBAR:Ljava/lang/String; = "SCRINGO_TOOLBAR"

.field public static final TYPE_TEXT:Ljava/lang/String; = "TEXT"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected advertiserId:Ljava/lang/String;

.field private age:Ljava/lang/String;

.field private ai:Ljava/lang/Boolean;

.field private as:Ljava/lang/Boolean;

.field private categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoriesExclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected country:Ljava/lang/String;

.field protected forceFullpage:Z

.field protected forceOfferWall2D:Z

.field protected forceOfferWall3D:Z

.field protected forceOverlay:Z

.field private gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

.field private hardwareAccelerated:Z

.field private keywords:Ljava/lang/String;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field protected minCpm:Ljava/lang/Double;

.field protected packageInclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private productId:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field protected template:Ljava/lang/String;

.field private testMode:Z

.field protected type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

.field private videoMuted:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->country:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->template:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    .line 24
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->packageInclude:Ljava/util/Set;

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall3D:Z

    .line 27
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall2D:Z

    .line 28
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceFullpage:Z

    .line 29
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOverlay:Z

    .line 42
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->minCpm:Ljava/lang/Double;

    .line 83
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->testMode:Z

    .line 86
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 87
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 88
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    .line 90
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->age:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->ai:Ljava/lang/Boolean;

    .line 92
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->as:Ljava/lang/Boolean;

    .line 93
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->videoMuted:Z

    .line 96
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/m;->d()Z

    move-result v1

    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->hardwareAccelerated:Z

    .line 98
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    .line 99
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->country:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->template:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    .line 24
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->packageInclude:Ljava/util/Set;

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall3D:Z

    .line 27
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall2D:Z

    .line 28
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceFullpage:Z

    .line 29
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOverlay:Z

    .line 42
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->minCpm:Ljava/lang/Double;

    .line 83
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->testMode:Z

    .line 86
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 87
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 88
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    .line 90
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->age:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->ai:Ljava/lang/Boolean;

    .line 92
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->as:Ljava/lang/Boolean;

    .line 93
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->videoMuted:Z

    .line 96
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/m;->d()Z

    move-result v1

    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->hardwareAccelerated:Z

    .line 98
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    .line 99
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    .line 105
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->country:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->advertiserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->template:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->template:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    .line 109
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->packageInclude:Ljava/util/Set;

    if-eqz v0, :cond_5a

    .line 110
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->packageInclude:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->packageInclude:Ljava/util/Set;

    .line 112
    :cond_5a
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->minCpm:Ljava/lang/Double;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->minCpm:Ljava/lang/Double;

    .line 113
    iget-boolean v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall3D:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall3D:Z

    .line 114
    iget-boolean v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall2D:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall2D:Z

    .line 115
    iget-boolean v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->forceFullpage:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceFullpage:Z

    .line 116
    iget-boolean v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOverlay:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOverlay:Z

    .line 117
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    .line 119
    iget-boolean v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->testMode:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->testMode:Z

    .line 120
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->longitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 121
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->latitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 122
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->keywords:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 123
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    .line 124
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->age:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->age:Ljava/lang/String;

    .line 125
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->ai:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->ai:Ljava/lang/Boolean;

    .line 126
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->as:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->as:Ljava/lang/Boolean;

    .line 127
    iget-boolean v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->videoMuted:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->videoMuted:Z

    .line 128
    iget-boolean v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->hardwareAccelerated:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->hardwareAccelerated:Z

    .line 129
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    if-eqz v0, :cond_ab

    .line 130
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    .line 132
    :cond_ab
    iget-object v0, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    if-eqz v0, :cond_b8

    .line 133
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    :cond_b8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->country:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->template:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    .line 24
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->packageInclude:Ljava/util/Set;

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall3D:Z

    .line 27
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall2D:Z

    .line 28
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceFullpage:Z

    .line 29
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOverlay:Z

    .line 42
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->minCpm:Ljava/lang/Double;

    .line 83
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->testMode:Z

    .line 86
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 87
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 88
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    .line 90
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->age:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->ai:Ljava/lang/Boolean;

    .line 92
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->as:Ljava/lang/Boolean;

    .line 93
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->videoMuted:Z

    .line 96
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/m;->d()Z

    move-result v1

    iput-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->hardwareAccelerated:Z

    .line 98
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    .line 99
    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    .line 142
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 20
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->country:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->template:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    .line 24
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->packageInclude:Ljava/util/Set;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall3D:Z

    .line 27
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall2D:Z

    .line 28
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceFullpage:Z

    .line 29
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOverlay:Z

    .line 42
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->minCpm:Ljava/lang/Double;

    .line 83
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    .line 85
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->testMode:Z

    .line 86
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 87
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 88
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    .line 90
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->age:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->ai:Ljava/lang/Boolean;

    .line 92
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->as:Ljava/lang/Boolean;

    .line 93
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->videoMuted:Z

    .line 96
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/m;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->hardwareAccelerated:Z

    .line 98
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    .line 99
    iput-object p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    .line 151
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 287
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    .line 289
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCategoryExclude(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 299
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    .line 301
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_160

    .line 340
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_160

    .line 342
    :cond_13
    check-cast p1, Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 344
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall3D:Z

    iget-boolean v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall3D:Z

    if-eq v2, v3, :cond_1c

    return v1

    .line 345
    :cond_1c
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall2D:Z

    iget-boolean v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall2D:Z

    if-eq v2, v3, :cond_23

    return v1

    .line 346
    :cond_23
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceFullpage:Z

    iget-boolean v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->forceFullpage:Z

    if-eq v2, v3, :cond_2a

    return v1

    .line 347
    :cond_2a
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOverlay:Z

    iget-boolean v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOverlay:Z

    if-eq v2, v3, :cond_31

    return v1

    .line 348
    :cond_31
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->testMode:Z

    iget-boolean v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->testMode:Z

    if-eq v2, v3, :cond_38

    return v1

    .line 349
    :cond_38
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->videoMuted:Z

    iget-boolean v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->videoMuted:Z

    if-eq v2, v3, :cond_3f

    return v1

    .line 350
    :cond_3f
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->hardwareAccelerated:Z

    iget-boolean v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->hardwareAccelerated:Z

    if-eq v2, v3, :cond_46

    return v1

    .line 351
    :cond_46
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->country:Ljava/lang/String;

    if-eqz v2, :cond_53

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->country:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    goto :goto_57

    :cond_53
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->country:Ljava/lang/String;

    if-eqz v2, :cond_58

    :goto_57
    return v1

    .line 352
    :cond_58
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->advertiserId:Ljava/lang/String;

    if-eqz v2, :cond_65

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->advertiserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    goto :goto_69

    :cond_65
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->advertiserId:Ljava/lang/String;

    if-eqz v2, :cond_6a

    :goto_69
    return v1

    .line 353
    :cond_6a
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->template:Ljava/lang/String;

    if-eqz v2, :cond_77

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->template:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    goto :goto_7b

    :cond_77
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->template:Ljava/lang/String;

    if-eqz v2, :cond_7c

    :goto_7b
    return v1

    .line 354
    :cond_7c
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-eq v2, v3, :cond_83

    return v1

    .line 355
    :cond_83
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->packageInclude:Ljava/util/Set;

    if-eqz v2, :cond_90

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->packageInclude:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    goto :goto_94

    :cond_90
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->packageInclude:Ljava/util/Set;

    if-eqz v2, :cond_95

    :goto_94
    return v1

    .line 356
    :cond_95
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->minCpm:Ljava/lang/Double;

    if-eqz v2, :cond_a2

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->minCpm:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    goto :goto_a6

    :cond_a2
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->minCpm:Ljava/lang/Double;

    if-eqz v2, :cond_a7

    :goto_a6
    return v1

    .line 357
    :cond_a7
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    if-eqz v2, :cond_b4

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b9

    goto :goto_b8

    :cond_b4
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    if-eqz v2, :cond_b9

    :goto_b8
    return v1

    .line 358
    :cond_b9
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    if-eqz v2, :cond_c6

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cb

    goto :goto_ca

    :cond_c6
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    if-eqz v2, :cond_cb

    :goto_ca
    return v1

    .line 359
    :cond_cb
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->longitude:Ljava/lang/Double;

    if-eqz v2, :cond_d8

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->longitude:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dd

    goto :goto_dc

    :cond_d8
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->longitude:Ljava/lang/Double;

    if-eqz v2, :cond_dd

    :goto_dc
    return v1

    .line 360
    :cond_dd
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->latitude:Ljava/lang/Double;

    if-eqz v2, :cond_ea

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->latitude:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ef

    goto :goto_ee

    :cond_ea
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->latitude:Ljava/lang/Double;

    if-eqz v2, :cond_ef

    :goto_ee
    return v1

    .line 361
    :cond_ef
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->keywords:Ljava/lang/String;

    if-eqz v2, :cond_fc

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->keywords:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_101

    goto :goto_100

    :cond_fc
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->keywords:Ljava/lang/String;

    if-eqz v2, :cond_101

    :goto_100
    return v1

    .line 362
    :cond_101
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    if-eq v2, v3, :cond_108

    return v1

    .line 363
    :cond_108
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->age:Ljava/lang/String;

    if-eqz v2, :cond_115

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->age:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    goto :goto_119

    :cond_115
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->age:Ljava/lang/String;

    if-eqz v2, :cond_11a

    :goto_119
    return v1

    .line 364
    :cond_11a
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->ai:Ljava/lang/Boolean;

    if-eqz v2, :cond_127

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->ai:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12c

    goto :goto_12b

    :cond_127
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->ai:Ljava/lang/Boolean;

    if-eqz v2, :cond_12c

    :goto_12b
    return v1

    .line 365
    :cond_12c
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->as:Ljava/lang/Boolean;

    if-eqz v2, :cond_139

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->as:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13e

    goto :goto_13d

    :cond_139
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->as:Ljava/lang/Boolean;

    if-eqz v2, :cond_13e

    :goto_13d
    return v1

    .line 366
    :cond_13e
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    if-eqz v2, :cond_14b

    iget-object v3, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_150

    goto :goto_14f

    :cond_14b
    iget-object v2, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    if-eqz v2, :cond_150

    :goto_14f
    return v1

    .line 367
    :cond_150
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    iget-object p1, p1, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    if-eqz v2, :cond_15b

    invoke-interface {v2, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_15f

    :cond_15b
    if-nez p1, :cond_15e

    goto :goto_15f

    :cond_15e
    const/4 v0, 0x0

    :goto_15f
    return v0

    :cond_160
    :goto_160
    return v1
.end method

.method public getAge(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->age:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 238
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adsCommon/m;->g(Landroid/content/Context;)Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;->getAge()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    return-object v0
.end method

.method public getAi()Ljava/lang/Boolean;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->ai:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAs()Ljava/lang/Boolean;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->as:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCategories()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    return-object v0
.end method

.method public getCategoriesExclude()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    return-object v0
.end method

.method public getGender(Landroid/content/Context;)Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    if-nez v0, :cond_11

    .line 225
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adsCommon/m;->g(Landroid/content/Context;)Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;->getGender()Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    move-result-object p1

    return-object p1

    :cond_11
    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getMinCpm()Ljava/lang/Double;
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->minCpm:Ljava/lang/Double;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 372
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->country:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 373
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->advertiserId:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 374
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->template:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 375
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 376
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->packageInclude:Ljava/util/Set;

    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 377
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall3D:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 378
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOfferWall2D:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 379
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceFullpage:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 380
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->forceOverlay:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 381
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->minCpm:Ljava/lang/Double;

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_5f

    :cond_5e
    const/4 v2, 0x0

    :goto_5f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 382
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6c

    :cond_6b
    const/4 v2, 0x0

    :goto_6c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 383
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    if-eqz v2, :cond_78

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_79

    :cond_78
    const/4 v2, 0x0

    :goto_79
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 384
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->testMode:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 385
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->longitude:Ljava/lang/Double;

    if-eqz v2, :cond_8a

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_8b

    :cond_8a
    const/4 v2, 0x0

    :goto_8b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 386
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->latitude:Ljava/lang/Double;

    if-eqz v2, :cond_97

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_98

    :cond_97
    const/4 v2, 0x0

    :goto_98
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 387
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->keywords:Ljava/lang/String;

    if-eqz v2, :cond_a4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a5

    :cond_a4
    const/4 v2, 0x0

    :goto_a5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 388
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    if-eqz v2, :cond_b1

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;->hashCode()I

    move-result v2

    goto :goto_b2

    :cond_b1
    const/4 v2, 0x0

    :goto_b2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 389
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->age:Ljava/lang/String;

    if-eqz v2, :cond_be

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_bf

    :cond_be
    const/4 v2, 0x0

    :goto_bf
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 390
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->ai:Ljava/lang/Boolean;

    if-eqz v2, :cond_cb

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_cc

    :cond_cb
    const/4 v2, 0x0

    :goto_cc
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 391
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->as:Ljava/lang/Boolean;

    if-eqz v2, :cond_d8

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_d9

    :cond_d8
    const/4 v2, 0x0

    :goto_d9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 392
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->videoMuted:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 393
    iget-boolean v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->hardwareAccelerated:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 394
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    if-eqz v2, :cond_ef

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    goto :goto_f0

    :cond_ef
    const/4 v2, 0x0

    :goto_f0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 395
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    if-eqz v2, :cond_fb

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v1

    :cond_fb
    add-int/2addr v0, v1

    return v0
.end method

.method protected isHardwareAccelerated()Z
    .registers 2

    .line 306
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->hardwareAccelerated:Z

    return v0
.end method

.method public isSimpleToken()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isTestMode()Z
    .registers 2

    .line 188
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->testMode:Z

    return v0
.end method

.method public isVideoMuted()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->videoMuted:Z

    return v0
.end method

.method public muteVideo()Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 2

    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->videoMuted:Z

    return-object p0
.end method

.method public setAge(Ljava/lang/Integer;)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 2

    .line 245
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->age:Ljava/lang/String;

    return-object p0
.end method

.method public setAge(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->age:Ljava/lang/String;

    return-object p0
.end method

.method public setAi(Ljava/lang/Boolean;)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->ai:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setAs(Ljava/lang/Boolean;)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->as:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setGender(Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method public setLatitude(D)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 3

    .line 210
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->latitude:Ljava/lang/Double;

    return-object p0
.end method

.method public setLongitude(D)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 3

    .line 201
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->longitude:Ljava/lang/Double;

    return-object p0
.end method

.method public setMinCpm(Ljava/lang/Double;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->minCpm:Ljava/lang/Double;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public setPublisherId(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    return-object p0
.end method

.method public setTestMode(Z)Lcom/startapp/android/publish/common/model/AdPreferences;
    .registers 2

    .line 192
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->testMode:Z

    return-object p0
.end method

.method public setType(Lcom/startapp/android/publish/adsCommon/Ad$AdType;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->type:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPreferences [publisherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->publisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", testMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->testMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->latitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", minCPM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->minCpm:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categories:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", categoriesExclude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
