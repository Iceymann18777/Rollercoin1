.class public Lcom/onesignal/OneSignal$EmailUpdateError;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailUpdateError"
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private type:Lcom/onesignal/OneSignal$EmailErrorType;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V
    .registers 3

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/onesignal/OneSignal$EmailUpdateError;->type:Lcom/onesignal/OneSignal$EmailErrorType;

    .line 222
    iput-object p2, p0, Lcom/onesignal/OneSignal$EmailUpdateError;->message:Ljava/lang/String;

    return-void
.end method
