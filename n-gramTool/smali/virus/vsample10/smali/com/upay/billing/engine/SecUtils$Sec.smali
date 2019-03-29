.class public Lcom/upay/billing/engine/SecUtils$Sec;
.super Ljava/lang/Object;


# instance fields
.field private androidos:Ljava/lang/String;

.field private isOpen:Ljava/lang/String;

.field private isRoot:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private softversion:Ljava/lang/String;

.field final synthetic this$0:Lcom/upay/billing/engine/SecUtils;

.field private value:I


# direct methods
.method public constructor <init>(Lcom/upay/billing/engine/SecUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/SecUtils$Sec;->this$0:Lcom/upay/billing/engine/SecUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/upay/billing/engine/SecUtils$Sec;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/upay/billing/engine/SecUtils$Sec;->androidos:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/SecUtils$Sec;->softversion:Ljava/lang/String;

    iput-object p5, p0, Lcom/upay/billing/engine/SecUtils$Sec;->isRoot:Ljava/lang/String;

    iput-object p6, p0, Lcom/upay/billing/engine/SecUtils$Sec;->isOpen:Ljava/lang/String;

    iput p7, p0, Lcom/upay/billing/engine/SecUtils$Sec;->value:I

    return-void
.end method


# virtual methods
.method public getAndroidOs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils$Sec;->androidos:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRoot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils$Sec;->isRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils$Sec;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils$Sec;->softversion:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/upay/billing/engine/SecUtils$Sec;->value:I

    return v0
.end method

.method public isOpen()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils$Sec;->isOpen:Ljava/lang/String;

    return-object v0
.end method

.method public print()V
    .locals 3

    const-string v0, "SecUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/SecUtils$Sec;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/SecUtils$Sec;->androidos:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "softVerisono="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/SecUtils$Sec;->softversion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/SecUtils$Sec;->isRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/SecUtils$Sec;->isOpen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/upay/billing/engine/SecUtils$Sec;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecUtils"

    const-string v1, "----------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAndroidos(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/SecUtils$Sec;->androidos:Ljava/lang/String;

    return-void
.end method

.method public setIsOpen(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/SecUtils$Sec;->isOpen:Ljava/lang/String;

    return-void
.end method

.method public setIsRoot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/SecUtils$Sec;->isRoot:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/SecUtils$Sec;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSoftVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/SecUtils$Sec;->softversion:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/upay/billing/engine/SecUtils$Sec;->value:I

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/upay/billing/engine/SecUtils$Sec;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "androidos"

    iget-object v2, p0, Lcom/upay/billing/engine/SecUtils$Sec;->androidos:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "softversion"

    iget-object v2, p0, Lcom/upay/billing/engine/SecUtils$Sec;->softversion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "root"

    iget-object v2, p0, Lcom/upay/billing/engine/SecUtils$Sec;->isRoot:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "open"

    iget-object v2, p0, Lcom/upay/billing/engine/SecUtils$Sec;->isOpen:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    iget v2, p0, Lcom/upay/billing/engine/SecUtils$Sec;->value:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
