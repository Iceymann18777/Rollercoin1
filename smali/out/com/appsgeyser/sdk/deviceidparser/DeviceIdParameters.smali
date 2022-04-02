.class public Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;
.super Ljava/lang/Object;
.source "DeviceIdParameters.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private aId:Ljava/lang/String;

.field private advId:Ljava/lang/String;

.field private limitAdTrackingEnabledStates:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->advId:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->aId:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->limitAdTrackingEnabledStates:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->advId:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->aId:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->limitAdTrackingEnabledStates:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 58
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAdvId()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->advId:Ljava/lang/String;

    return-object v0
.end method

.method setAdvId(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->advId:Ljava/lang/String;

    return-void
.end method

.method setLimitAdTrackingEnabled(Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->limitAdTrackingEnabledStates:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    return-void
.end method

.method setaId(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->aId:Ljava/lang/String;

    return-void
.end method
