.class public Lcom/startapp/android/mediation/admob/StartAppExtras;
.super Ljava/lang/Object;
.source "StartAppExtras.java"


# instance fields
.field private adTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdTag()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppExtras;->adTag:Ljava/lang/String;

    return-object v0
.end method

.method public setAdTag(Ljava/lang/String;)Lcom/startapp/android/mediation/admob/StartAppExtras;
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppExtras;->adTag:Ljava/lang/String;

    return-object p0
.end method
