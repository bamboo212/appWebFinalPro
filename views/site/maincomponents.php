<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Main Components';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>

   
    
    <h3>Charge controller</h3>
<?= Html::img("@web/images/chargecontroller.jpg") ?><br />
Since the brighter the sunlight, the more voltage the solar cells produce, the excessive voltage could damage the batteries. A charge controller is used to maintain the proper charging voltage on the batteries. As the input voltage from the solar array rises, the charge controller regulates the charge to the batteries preventing any over charging. Modern multi-stage charge controllers. Most quality charge controller units have what is known as a 3 stage charge cycle that goes like this : 1) BULK : During the Bulk phase of the charge cycle, the voltage gradually rises to the Bulk level (usually 14.4 to 14.6 volts) while the batteries draw maximum current. When Bulk level voltage is reached the absorption stage begins. 2) ABSORPTION : During this phase the voltage is maintained at Bulk voltage level for a specified time (usually an hour) while the current gradually tapers off as the batteries charge up. 3) FLOAT : After the absorption time passes the voltage is lowered to float level (usually 13.4 to 13.7 volts) and the batteries draw a small maintenance current until the next cycle. The relationship between the current and the voltage during the 3 phases of the charge cycle can be shown visually by the graph below. 




<h3>Solar panels</h3>
<?= Html::img("@web/images/panel.jpg") ?><br />
Solar panels generate free power from the sun by converting sunlight to electricity with no moving parts, zero emissions, and no maintenance. The solar panel, the first component of a electric solar energy system, is a collection of individual silicon cells that generate electricity from sunlight. The photons (light particles) produce an electrical current as they strike the surface of the thin silicon wafers. A single solar cell produces only about 1/2 (.5) of a volt. However, a typical 12 volt panel about 25 inches by 54 inches will contain 36 cells wired in series to produce about 17 volts peak output. If the solar panel can be configured for 24 volt output, there will be 72 cells so the two 12 volt groups of 36 each can be wired in series, usually with a jumper, allowing the solar panel to output 24 volts. When under load (charging batteries for example), this voltage drops to 12 to 14 volts (for a 12 volt configuration) resulting in 75 to 100 watts for a panel of this size. 





<h3>Batteries</h3>
<?= Html::img("@web/images/batteries.jpg") ?><br />
Storage Batteries : the fuel tank of your solar power system Without batteries to store energy you would only have power when the sun was shining or the generator was running. This tutorial describes the 4 basic types of batteries & provides some good tips on the care & feeding of your batteries to maximize their performance and life. Batteries for alternative energy systems are available in 2, 4, 6, and 12 volts 1) RV / Marine / Golf Cart : RV or Marine type deep cycle batteries are basically for boats & campers and are suitable for only very small systems. They can be used but do not really have the capacity for continous service with many charge/discharge cycles for many years. Regular or Car type batteries should not be used at all because they cannot be discharged very much without internal damage. A very popular battery for small systems is the Golf Cart battery. They are somewhat more expensive than deep cycle recreational batteries but are probably the least expensive choice for a small system on a budget. Industrial strength : Flooded, Gel, and AGM sealed batteries The next 3 types are the heavier industrial type batteries. They are all also considered Deep Cycle and are usually Lead Acid types with much thicker internal plates that can withstand many deep discharge cycles. These next 3 are all designed for alternative energy systems. 2) Flooded types : These are Lead acid batteries that have caps to add water. Many manufacturers make these types for Solar Energy use. Trojan, Surrette, and Deka are probably the most well known. They are reasonably priced and work well for many years. All flooded batteries release gas when charged and should not be used indoors. If installed in an enclosure, a venting system should be used to vent out the gases which can be explosive. 3) Gel : Not to be confused with maintenance free batteries, sealed gel batteries have no vents and will not release gas during the charging process like flooded batteries do. Venting is therefore not required and they can be used indoors. This is a big advantage because it allows the batteries to maintain a more constant temperature and perform better. 4) AGM : Absorbed Glass Mat batteries are in my opinion the best available for Solar Power use. A woven glass mat is used between the plates to hold the electrolyte. They are leak/spill proof, do not out gas when charging, and have superior performance. They have all the advantages of the sealed gel types and are higher quality, maintain voltage better, self discharge slower, and last longer. The Sun Xtender series by Concorde Battery is an excellent example of AGM batteries. They are more expensive, but you usually get what you pay for. You will find this type of battery used in airplanes, hospitals, and remote telephone/cell tower installations. 


<h3>The Power Inverter</h3>
<?= Html::img("@web/images/inverter.jpg") ?><br />
Trace (Xantrex) 2.5 KW 12 volts DC to 120 volts AC inverter Unless you plan on using battery power for everything, you will need a Power Inverter. Since the majority of modern conveniences all run on 120 volts AC, the Power Inverter will be the heart of your Solar Energy System. It not only converts the low voltage DC to the 120 volts AC that runs most appliances, but also can charge the batteries if connected to the utility grid or a AC Generator as in the case of a totally independent stand-alone solar power system. 

    
    
    
   
</div>
