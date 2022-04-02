.class public Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;
.super Ljava/lang/Object;
.source "IncludeScriptConfigEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final file:Ljava/lang/String;

.field private final pattern:Ljava/lang/String;

.field private final regex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->file:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->pattern:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->regex:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getRegex()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->regex:Ljava/lang/String;

    return-object v0
.end method
