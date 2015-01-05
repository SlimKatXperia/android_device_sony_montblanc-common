# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Add backup for efs during flashing of ota-zip"""

import common

def Thanks(self):
	self.script.AppendExtra('ui_print("===========================================");')
	self.script.AppendExtra('ui_print("Author: AOSX Team (95A31, percy-g2, wan5xp,");')
	self.script.AppendExtra('ui_print("        Agontuk, alwaysadeel, Abhinav1997, ");')
	self.script.AppendExtra('ui_print("        DevSwift, Andrewas, XMelancholy)   ");')
	self.script.AppendExtra('ui_print("                                           ");')
	self.script.AppendExtra('ui_print("Sources: github.com/AndroidOpenSourceXperia");') 
	self.script.AppendExtra('ui_print("                                           ");')
	self.script.AppendExtra('ui_print("Thanks: munjeni, FXP Team, Canjica Team,   ");')
	self.script.AppendExtra('ui_print("        Meticulus                          ");')
	self.script.AppendExtra('ui_print("===========================================");')

def FullOTA_Assertions(self):
	Thanks(self)

def IncrementalOTA_Assertions(self):
	Thanks(self)

